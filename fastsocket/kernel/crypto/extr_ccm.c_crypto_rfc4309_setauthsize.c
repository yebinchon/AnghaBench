
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_rfc4309_ctx {int child; } ;
struct crypto_aead {int dummy; } ;


 int EINVAL ;
 struct crypto_rfc4309_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_aead_setauthsize (int ,unsigned int) ;

__attribute__((used)) static int crypto_rfc4309_setauthsize(struct crypto_aead *parent,
          unsigned int authsize)
{
 struct crypto_rfc4309_ctx *ctx = crypto_aead_ctx(parent);

 switch (authsize) {
 case 8:
 case 12:
 case 16:
  break;
 default:
  return -EINVAL;
 }

 return crypto_aead_setauthsize(ctx->child, authsize);
}
