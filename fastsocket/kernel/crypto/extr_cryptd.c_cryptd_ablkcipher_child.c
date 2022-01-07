
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_blkcipher {int dummy; } ;
struct cryptd_blkcipher_ctx {struct crypto_blkcipher* child; } ;
struct cryptd_ablkcipher {int base; } ;


 struct cryptd_blkcipher_ctx* crypto_ablkcipher_ctx (int *) ;

struct crypto_blkcipher *cryptd_ablkcipher_child(struct cryptd_ablkcipher *tfm)
{
 struct cryptd_blkcipher_ctx *ctx = crypto_ablkcipher_ctx(&tfm->base);
 return ctx->child;
}
