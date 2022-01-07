
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct shash_desc {int flags; int tfm; } ;
struct TYPE_2__ {int flags; int tfm; } ;
struct padlock_sha_desc {TYPE_1__ fallback; } ;
struct padlock_sha_ctx {int fallback; } ;


 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 struct padlock_sha_ctx* crypto_shash_ctx (int ) ;
 int crypto_shash_init (TYPE_1__*) ;
 struct padlock_sha_desc* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int padlock_sha_init(struct shash_desc *desc)
{
 struct padlock_sha_desc *dctx = shash_desc_ctx(desc);
 struct padlock_sha_ctx *ctx = crypto_shash_ctx(desc->tfm);

 dctx->fallback.tfm = ctx->fallback;
 dctx->fallback.flags = desc->flags & CRYPTO_TFM_REQ_MAY_SLEEP;
 return crypto_shash_init(&dctx->fallback);
}
