
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_aead {int dummy; } ;
struct cryptd_aead_ctx {struct crypto_aead* child; } ;
struct cryptd_aead {int base; } ;


 struct cryptd_aead_ctx* crypto_aead_ctx (int *) ;

struct crypto_aead *cryptd_aead_child(struct cryptd_aead *tfm)
{
 struct cryptd_aead_ctx *ctx;
 ctx = crypto_aead_ctx(&tfm->base);
 return ctx->child;
}
