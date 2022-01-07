
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_shash {int dummy; } ;
struct cryptd_hash_ctx {struct crypto_shash* child; } ;
struct cryptd_ahash {int base; } ;


 struct cryptd_hash_ctx* crypto_ahash_ctx (int *) ;

struct crypto_shash *cryptd_ahash_child(struct cryptd_ahash *tfm)
{
 struct cryptd_hash_ctx *ctx = crypto_ahash_ctx(&tfm->base);

 return ctx->child;
}
