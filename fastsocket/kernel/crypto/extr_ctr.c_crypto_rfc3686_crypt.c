
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int data; int complete; int flags; } ;
struct ablkcipher_request {int nbytes; int dst; int src; TYPE_1__ base; int info; } ;
struct crypto_rfc3686_req_ctx {int * iv; struct ablkcipher_request subreq; } ;
struct crypto_rfc3686_ctx {int nonce; struct crypto_ablkcipher* child; } ;
struct crypto_ablkcipher {int dummy; } ;
typedef int __be32 ;


 int CTR_RFC3686_IV_SIZE ;
 int CTR_RFC3686_NONCE_SIZE ;
 scalar_t__ PTR_ALIGN (int *,unsigned long) ;
 scalar_t__ ablkcipher_request_ctx (struct ablkcipher_request*) ;
 int ablkcipher_request_set_callback (struct ablkcipher_request*,int ,int ,int ) ;
 int ablkcipher_request_set_crypt (struct ablkcipher_request*,int ,int ,int ,int *) ;
 int ablkcipher_request_set_tfm (struct ablkcipher_request*,struct crypto_ablkcipher*) ;
 int cpu_to_be32 (int) ;
 unsigned long crypto_ablkcipher_alignmask (struct crypto_ablkcipher*) ;
 struct crypto_rfc3686_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 int crypto_ablkcipher_encrypt (struct ablkcipher_request*) ;
 struct crypto_ablkcipher* crypto_ablkcipher_reqtfm (struct ablkcipher_request*) ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static int crypto_rfc3686_crypt(struct ablkcipher_request *req)
{
 struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(req);
 struct crypto_rfc3686_ctx *ctx = crypto_ablkcipher_ctx(tfm);
 struct crypto_ablkcipher *child = ctx->child;
 unsigned long align = crypto_ablkcipher_alignmask(tfm);
 struct crypto_rfc3686_req_ctx *rctx =
  (void *)PTR_ALIGN((u8 *)ablkcipher_request_ctx(req), align + 1);
 struct ablkcipher_request *subreq = &rctx->subreq;
 u8 *iv = rctx->iv;


 memcpy(iv, ctx->nonce, CTR_RFC3686_NONCE_SIZE);
 memcpy(iv + CTR_RFC3686_NONCE_SIZE, req->info, CTR_RFC3686_IV_SIZE);


 *(__be32 *)(iv + CTR_RFC3686_NONCE_SIZE + CTR_RFC3686_IV_SIZE) =
  cpu_to_be32(1);

 ablkcipher_request_set_tfm(subreq, child);
 ablkcipher_request_set_callback(subreq, req->base.flags,
     req->base.complete, req->base.data);
 ablkcipher_request_set_crypt(subreq, req->src, req->dst, req->nbytes,
         iv);

 return crypto_ablkcipher_encrypt(subreq);
}
