
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct crypto_gcm_req_priv_ctx {struct scatterlist* src; struct scatterlist* dst; int auth_tag; } ;
struct crypto_gcm_ctx {int ctr; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {int iv; int dst; int src; } ;
struct ablkcipher_request {int dummy; } ;
typedef int __be32 ;


 int ablkcipher_request_set_crypt (struct ablkcipher_request*,struct scatterlist*,struct scatterlist*,unsigned int,int ) ;
 int ablkcipher_request_set_tfm (struct ablkcipher_request*,int ) ;
 int cpu_to_be32 (int) ;
 struct crypto_gcm_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 struct crypto_gcm_req_priv_ctx* crypto_gcm_reqctx (struct aead_request*) ;
 int memcpy (int ,int *,int) ;
 int memset (int ,int ,int) ;
 int scatterwalk_sg_chain (struct scatterlist*,int,int ) ;
 int sg_init_table (struct scatterlist*,int) ;
 int sg_set_buf (struct scatterlist*,int ,int) ;

__attribute__((used)) static void crypto_gcm_init_crypt(struct ablkcipher_request *ablk_req,
      struct aead_request *req,
      unsigned int cryptlen)
{
 struct crypto_aead *aead = crypto_aead_reqtfm(req);
 struct crypto_gcm_ctx *ctx = crypto_aead_ctx(aead);
 struct crypto_gcm_req_priv_ctx *pctx = crypto_gcm_reqctx(req);
 struct scatterlist *dst;
 __be32 counter = cpu_to_be32(1);

 memset(pctx->auth_tag, 0, sizeof(pctx->auth_tag));
 memcpy(req->iv + 12, &counter, 4);

 sg_init_table(pctx->src, 2);
 sg_set_buf(pctx->src, pctx->auth_tag, sizeof(pctx->auth_tag));
 scatterwalk_sg_chain(pctx->src, 2, req->src);

 dst = pctx->src;
 if (req->src != req->dst) {
  sg_init_table(pctx->dst, 2);
  sg_set_buf(pctx->dst, pctx->auth_tag, sizeof(pctx->auth_tag));
  scatterwalk_sg_chain(pctx->dst, 2, req->dst);
  dst = pctx->dst;
 }

 ablkcipher_request_set_tfm(ablk_req, ctx->ctr);
 ablkcipher_request_set_crypt(ablk_req, pctx->src, dst,
         cryptlen + sizeof(pctx->auth_tag),
         req->iv);
}
