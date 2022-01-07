
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_3__ {int flags; void* data; int complete; } ;
struct TYPE_4__ {int * info; scalar_t__ nbytes; TYPE_1__ base; struct scatterlist* dst; struct scatterlist* src; } ;
struct skcipher_givcrypt_request {int * giv; int seq; TYPE_2__ creq; } ;
struct scatterlist {int offset; } ;
struct page {int dummy; } ;
struct eseqiv_request_ctx {struct scatterlist* src; struct scatterlist* dst; scalar_t__ tail; } ;
struct eseqiv_ctx {int * salt; scalar_t__ reqoff; } ;
struct crypto_ablkcipher {int dummy; } ;
struct ablkcipher_request {int dummy; } ;
typedef int crypto_completion_t ;
typedef int __be64 ;


 int * PTR_ALIGN (int *,scalar_t__) ;
 scalar_t__ PageHighMem (struct page*) ;
 int ablkcipher_request_set_callback (struct ablkcipher_request*,int ,int ,void*) ;
 int ablkcipher_request_set_crypt (struct ablkcipher_request*,struct scatterlist*,struct scatterlist*,scalar_t__,int *) ;
 int ablkcipher_request_set_tfm (struct ablkcipher_request*,int ) ;
 int cpu_to_be64 (int ) ;
 scalar_t__ crypto_ablkcipher_alignmask (struct crypto_ablkcipher*) ;
 struct eseqiv_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 int crypto_ablkcipher_encrypt (struct ablkcipher_request*) ;
 unsigned int crypto_ablkcipher_ivsize (struct crypto_ablkcipher*) ;
 int eseqiv_complete ;
 int eseqiv_complete2 (struct skcipher_givcrypt_request*) ;
 int memcpy (int *,int *,unsigned int) ;
 int memset (int *,int ,unsigned int) ;
 int * page_address (struct page*) ;
 int scatterwalk_crypto_chain (struct scatterlist*,struct scatterlist*,int,int) ;
 int sg_init_table (struct scatterlist*,int) ;
 struct page* sg_page (struct scatterlist*) ;
 int sg_set_buf (struct scatterlist*,int *,unsigned int) ;
 int skcipher_geniv_cipher (struct crypto_ablkcipher*) ;
 struct eseqiv_request_ctx* skcipher_givcrypt_reqctx (struct skcipher_givcrypt_request*) ;
 struct crypto_ablkcipher* skcipher_givcrypt_reqtfm (struct skcipher_givcrypt_request*) ;

__attribute__((used)) static int eseqiv_givencrypt(struct skcipher_givcrypt_request *req)
{
 struct crypto_ablkcipher *geniv = skcipher_givcrypt_reqtfm(req);
 struct eseqiv_ctx *ctx = crypto_ablkcipher_ctx(geniv);
 struct eseqiv_request_ctx *reqctx = skcipher_givcrypt_reqctx(req);
 struct ablkcipher_request *subreq;
 crypto_completion_t complete;
 void *data;
 struct scatterlist *osrc, *odst;
 struct scatterlist *dst;
 struct page *srcp;
 struct page *dstp;
 u8 *giv;
 u8 *vsrc;
 u8 *vdst;
 __be64 seq;
 unsigned int ivsize;
 unsigned int len;
 int err;

 subreq = (void *)(reqctx->tail + ctx->reqoff);
 ablkcipher_request_set_tfm(subreq, skcipher_geniv_cipher(geniv));

 giv = req->giv;
 complete = req->creq.base.complete;
 data = req->creq.base.data;

 osrc = req->creq.src;
 odst = req->creq.dst;
 srcp = sg_page(osrc);
 dstp = sg_page(odst);
 vsrc = PageHighMem(srcp) ? ((void*)0) : page_address(srcp) + osrc->offset;
 vdst = PageHighMem(dstp) ? ((void*)0) : page_address(dstp) + odst->offset;

 ivsize = crypto_ablkcipher_ivsize(geniv);

 if (vsrc != giv + ivsize && vdst != giv + ivsize) {
  giv = PTR_ALIGN((u8 *)reqctx->tail,
    crypto_ablkcipher_alignmask(geniv) + 1);
  complete = eseqiv_complete;
  data = req;
 }

 ablkcipher_request_set_callback(subreq, req->creq.base.flags, complete,
     data);

 sg_init_table(reqctx->src, 2);
 sg_set_buf(reqctx->src, giv, ivsize);
 scatterwalk_crypto_chain(reqctx->src, osrc, vsrc == giv + ivsize, 2);

 dst = reqctx->src;
 if (osrc != odst) {
  sg_init_table(reqctx->dst, 2);
  sg_set_buf(reqctx->dst, giv, ivsize);
  scatterwalk_crypto_chain(reqctx->dst, odst, vdst == giv + ivsize, 2);

  dst = reqctx->dst;
 }

 ablkcipher_request_set_crypt(subreq, reqctx->src, dst,
         req->creq.nbytes + ivsize,
         req->creq.info);

 memcpy(req->creq.info, ctx->salt, ivsize);

 len = ivsize;
 if (ivsize > sizeof(u64)) {
  memset(req->giv, 0, ivsize - sizeof(u64));
  len = sizeof(u64);
 }
 seq = cpu_to_be64(req->seq);
 memcpy(req->giv + ivsize - len, &seq, len);

 err = crypto_ablkcipher_encrypt(subreq);
 if (err)
  goto out;

 if (giv != req->giv)
  eseqiv_complete2(req);

out:
 return err;
}
