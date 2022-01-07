
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_aead {int dummy; } ;
struct TYPE_2__ {unsigned int authsize; } ;


 int EINVAL ;
 TYPE_1__* crypto_aead_crt (struct crypto_aead*) ;

__attribute__((used)) static int ccm_aes_nx_setauthsize(struct crypto_aead *tfm,
      unsigned int authsize)
{
 switch (authsize) {
 case 4:
 case 6:
 case 8:
 case 10:
 case 12:
 case 14:
 case 16:
  break;
 default:
  return -EINVAL;
 }

 crypto_aead_crt(tfm)->authsize = authsize;

 return 0;
}
