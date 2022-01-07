
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scatterlist {int offset; int length; } ;
struct page {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct authenc_request_ctx {unsigned int cryptlen; struct scatterlist* sg; struct scatterlist* asg; struct scatterlist* cipher; } ;
struct aead_request {scalar_t__ assoclen; struct scatterlist* assoc; struct scatterlist* src; } ;
typedef int authenc_ahash_t ;


 scalar_t__ PageHighMem (struct page*) ;
 struct authenc_request_ctx* aead_request_ctx (struct aead_request*) ;
 unsigned int crypto_aead_ivsize (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int crypto_authenc_ahash ;
 int crypto_authenc_ahash_fb ;
 int crypto_authenc_verify (struct aead_request*,int ) ;
 int * page_address (struct page*) ;
 int scatterwalk_crypto_chain (struct scatterlist*,struct scatterlist*,int,int) ;
 int sg_init_table (struct scatterlist*,int) ;
 scalar_t__ sg_is_last (struct scatterlist*) ;
 struct page* sg_page (struct scatterlist*) ;
 int sg_set_buf (struct scatterlist*,int *,unsigned int) ;
 int sg_set_page (struct scatterlist*,struct page*,int ,int) ;

__attribute__((used)) static int crypto_authenc_iverify(struct aead_request *req, u8 *iv,
      unsigned int cryptlen)
{
 struct crypto_aead *authenc = crypto_aead_reqtfm(req);
 struct authenc_request_ctx *areq_ctx = aead_request_ctx(req);
 struct scatterlist *src = req->src;
 struct scatterlist *assoc = req->assoc;
 struct scatterlist *cipher = areq_ctx->cipher;
 struct scatterlist *asg = areq_ctx->asg;
 unsigned int ivsize = crypto_aead_ivsize(authenc);
 authenc_ahash_t authenc_ahash_fn = crypto_authenc_ahash_fb;
 struct page *srcp;
 u8 *vsrc;

 srcp = sg_page(src);
 vsrc = PageHighMem(srcp) ? ((void*)0) : page_address(srcp) + src->offset;

 if (ivsize) {
  sg_init_table(cipher, 2);
  sg_set_buf(cipher, iv, ivsize);
  scatterwalk_crypto_chain(cipher, src, vsrc == iv + ivsize, 2);
  src = cipher;
  cryptlen += ivsize;
 }

 if (sg_is_last(assoc)) {
  authenc_ahash_fn = crypto_authenc_ahash;
  sg_init_table(asg, 2);
  sg_set_page(asg, sg_page(assoc), assoc->length, assoc->offset);
  scatterwalk_crypto_chain(asg, src, 0, 2);
  src = asg;
  cryptlen += req->assoclen;
 }

 areq_ctx->cryptlen = cryptlen;
 areq_ctx->sg = src;

 return crypto_authenc_verify(req, authenc_ahash_fn);
}
