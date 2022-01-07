
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * cip; } ;
struct s390_aes_ctx {TYPE_1__ fallback; } ;
struct crypto_tfm {int dummy; } ;


 int crypto_free_cipher (int *) ;
 struct s390_aes_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void fallback_exit_cip(struct crypto_tfm *tfm)
{
 struct s390_aes_ctx *sctx = crypto_tfm_ctx(tfm);

 crypto_free_cipher(sctx->fallback.cip);
 sctx->fallback.cip = ((void*)0);
}
