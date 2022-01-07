
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cryptocop_transform_init {int alg; int keylen; int cipher_mode; int csum_mode; } ;


 int DEBUG_API (int ) ;
 int EINVAL ;







 int cryptocop_cipher_mode_cbc ;
 int cryptocop_cipher_mode_ecb ;



 int printk (char*,...) ;

__attribute__((used)) static int transform_ok(struct cryptocop_transform_init *tinit)
{
 switch (tinit->alg){
 case 135:
  switch (tinit->csum_mode){
  case 129:
  case 130:
   break;
  default:
   DEBUG_API(printk("transform_ok: Bad mode set for csum transform\n"));
   return -EINVAL;
  }
 case 132:
 case 133:
 case 131:
  if (tinit->keylen != 0) {
   DEBUG_API(printk("transform_ok: non-zero keylength, %d, for a digest/csum algorithm\n", tinit->keylen));
   return -EINVAL;
  }
  break;
 case 134:
  if (tinit->keylen != 64) {
   DEBUG_API(printk("transform_ok: keylen %d invalid for DES\n", tinit->keylen));
   return -EINVAL;
  }
  break;
 case 137:
  if (tinit->keylen != 192) {
   DEBUG_API(printk("transform_ok: keylen %d invalid for 3DES\n", tinit->keylen));
   return -EINVAL;
  }
  break;
 case 136:
  if (tinit->keylen != 128 && tinit->keylen != 192 && tinit->keylen != 256) {
   DEBUG_API(printk("transform_ok: keylen %d invalid for AES\n", tinit->keylen));
   return -EINVAL;
  }
  break;
 case 128:
 default:
  DEBUG_API(printk("transform_ok: no such algorithm %d\n", tinit->alg));
  return -EINVAL;
 }

 switch (tinit->alg){
 case 134:
 case 137:
 case 136:
  if (tinit->cipher_mode != cryptocop_cipher_mode_ecb && tinit->cipher_mode != cryptocop_cipher_mode_cbc) return -EINVAL;
 default:
   break;
 }
 return 0;
}
