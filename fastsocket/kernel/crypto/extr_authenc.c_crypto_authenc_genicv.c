
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scatterlist {int offset; int length; } ;
struct page {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct authenc_request_ctx {unsigned int cryptlen; int update_complete; int complete; struct scatterlist* sg; struct scatterlist* asg; struct scatterlist* cipher; } ;
struct aead_request {unsigned int cryptlen; scalar_t__ assoclen; struct scatterlist* assoc; struct scatterlist* dst; } ;
typedef int * (* authenc_ahash_t ) (struct aead_request*,unsigned int) ;


 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 scalar_t__ PageHighMem (struct page*) ;
 struct authenc_request_ctx* aead_request_ctx (struct aead_request*) ;
 int authenc_geniv_ahash_done ;
 int authenc_geniv_ahash_update_done ;
 int crypto_aead_authsize (struct crypto_aead*) ;
 unsigned int crypto_aead_ivsize (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int * crypto_authenc_ahash (struct aead_request*,unsigned int) ;
 int * crypto_authenc_ahash_fb (struct aead_request*,unsigned int) ;
 int * page_address (struct page*) ;
 int scatterwalk_crypto_chain (struct scatterlist*,struct scatterlist*,int,int) ;
 int scatterwalk_map_and_copy (int *,struct scatterlist*,unsigned int,int ,int) ;
 int sg_init_table (struct scatterlist*,int) ;
 scalar_t__ sg_is_last (struct scatterlist*) ;
 struct page* sg_page (struct scatterlist*) ;
 int sg_set_buf (struct scatterlist*,int *,unsigned int) ;
 int sg_set_page (struct scatterlist*,struct page*,int ,int) ;

__attribute__((used)) static int crypto_authenc_genicv(struct aead_request *req, u8 *iv,
     unsigned int flags)
{
 struct crypto_aead *authenc = crypto_aead_reqtfm(req);
 struct authenc_request_ctx *areq_ctx = aead_request_ctx(req);
 struct scatterlist *dst = req->dst;
 struct scatterlist *assoc = req->assoc;
 struct scatterlist *cipher = areq_ctx->cipher;
 struct scatterlist *asg = areq_ctx->asg;
 unsigned int ivsize = crypto_aead_ivsize(authenc);
 unsigned int cryptlen = req->cryptlen;
 authenc_ahash_t authenc_ahash_fn = crypto_authenc_ahash_fb;
 struct page *dstp;
 u8 *vdst;
 u8 *hash;

 dstp = sg_page(dst);
 vdst = PageHighMem(dstp) ? ((void*)0) : page_address(dstp) + dst->offset;

 if (ivsize) {
  sg_init_table(cipher, 2);
  sg_set_buf(cipher, iv, ivsize);
  scatterwalk_crypto_chain(cipher, dst, vdst == iv + ivsize, 2);
  dst = cipher;
  cryptlen += ivsize;
 }

 if (sg_is_last(assoc)) {
  authenc_ahash_fn = crypto_authenc_ahash;
  sg_init_table(asg, 2);
  sg_set_page(asg, sg_page(assoc), assoc->length, assoc->offset);
  scatterwalk_crypto_chain(asg, dst, 0, 2);
  dst = asg;
  cryptlen += req->assoclen;
 }

 areq_ctx->cryptlen = cryptlen;
 areq_ctx->sg = dst;

 areq_ctx->complete = authenc_geniv_ahash_done;
 areq_ctx->update_complete = authenc_geniv_ahash_update_done;

 hash = authenc_ahash_fn(req, flags);
 if (IS_ERR(hash))
  return PTR_ERR(hash);

 scatterwalk_map_and_copy(hash, dst, cryptlen,
     crypto_aead_authsize(authenc), 1);
 return 0;
}
