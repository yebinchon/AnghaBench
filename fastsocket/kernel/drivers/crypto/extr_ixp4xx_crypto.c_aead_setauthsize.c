
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_aead {int dummy; } ;
struct TYPE_2__ {int maxauthsize; } ;


 int EINVAL ;
 int aead_setup (struct crypto_aead*,unsigned int) ;
 TYPE_1__* crypto_aead_alg (struct crypto_aead*) ;

__attribute__((used)) static int aead_setauthsize(struct crypto_aead *tfm, unsigned int authsize)
{
 int max = crypto_aead_alg(tfm)->maxauthsize >> 2;

 if ((authsize>>2) < 1 || (authsize>>2) > max || (authsize & 3))
  return -EINVAL;
 return aead_setup(tfm, authsize);
}
