
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct shash_desc {int flags; struct crypto_shash* tfm; } ;
struct crypto_shash {int dummy; } ;
struct crypto_async_request {int tfm; } ;
struct cryptd_hash_request_ctx {int (* complete ) (TYPE_1__*,int) ;struct shash_desc desc; } ;
struct cryptd_hash_ctx {struct crypto_shash* child; } ;
struct TYPE_2__ {int (* complete ) (TYPE_1__*,int) ;} ;
struct ahash_request {TYPE_1__ base; } ;


 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int EINPROGRESS ;
 struct ahash_request* ahash_request_cast (struct crypto_async_request*) ;
 struct cryptd_hash_request_ctx* ahash_request_ctx (struct ahash_request*) ;
 struct cryptd_hash_ctx* crypto_tfm_ctx (int ) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int shash_ahash_digest (struct ahash_request*,struct shash_desc*) ;
 int stub1 (TYPE_1__*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void cryptd_hash_digest(struct crypto_async_request *req_async, int err)
{
 struct cryptd_hash_ctx *ctx = crypto_tfm_ctx(req_async->tfm);
 struct crypto_shash *child = ctx->child;
 struct ahash_request *req = ahash_request_cast(req_async);
 struct cryptd_hash_request_ctx *rctx = ahash_request_ctx(req);
 struct shash_desc *desc = &rctx->desc;

 if (unlikely(err == -EINPROGRESS))
  goto out;

 desc->tfm = child;
 desc->flags = CRYPTO_TFM_REQ_MAY_SLEEP;

 err = shash_ahash_digest(req, desc);

 req->base.complete = rctx->complete;

out:
 local_bh_disable();
 rctx->complete(&req->base, err);
 local_bh_enable();
}
