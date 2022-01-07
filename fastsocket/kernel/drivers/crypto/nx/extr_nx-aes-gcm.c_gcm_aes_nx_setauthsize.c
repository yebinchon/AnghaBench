
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct crypto_aead {int dummy; } ;
struct TYPE_4__ {unsigned int maxauthsize; } ;
struct TYPE_3__ {unsigned int authsize; } ;


 int EINVAL ;
 TYPE_2__* crypto_aead_alg (struct crypto_aead*) ;
 TYPE_1__* crypto_aead_crt (struct crypto_aead*) ;

__attribute__((used)) static int gcm_aes_nx_setauthsize(struct crypto_aead *tfm,
      unsigned int authsize)
{
 if (authsize > crypto_aead_alg(tfm)->maxauthsize)
  return -EINVAL;

 crypto_aead_crt(tfm)->authsize = authsize;

 return 0;
}
