
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct talitos_ctx {unsigned int authsize; } ;
struct crypto_aead {int dummy; } ;


 struct talitos_ctx* crypto_aead_ctx (struct crypto_aead*) ;

__attribute__((used)) static int aead_setauthsize(struct crypto_aead *authenc,
       unsigned int authsize)
{
 struct talitos_ctx *ctx = crypto_aead_ctx(authenc);

 ctx->authsize = authsize;

 return 0;
}
