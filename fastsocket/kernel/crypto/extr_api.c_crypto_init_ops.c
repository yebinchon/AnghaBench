
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct crypto_type {int (* init ) (struct crypto_tfm*,int ,int ) ;} ;
struct crypto_tfm {TYPE_1__* __crt_alg; } ;
struct TYPE_2__ {struct crypto_type* cra_type; } ;


 int BUG () ;


 int EINVAL ;
 int crypto_init_cipher_ops (struct crypto_tfm*) ;
 int crypto_init_compress_ops (struct crypto_tfm*) ;
 int crypto_tfm_alg_type (struct crypto_tfm*) ;
 int stub1 (struct crypto_tfm*,int ,int ) ;

__attribute__((used)) static int crypto_init_ops(struct crypto_tfm *tfm, u32 type, u32 mask)
{
 const struct crypto_type *type_obj = tfm->__crt_alg->cra_type;

 if (type_obj)
  return type_obj->init(tfm, type, mask);

 switch (crypto_tfm_alg_type(tfm)) {
 case 129:
  return crypto_init_cipher_ops(tfm);

 case 128:
  return crypto_init_compress_ops(tfm);

 default:
  break;
 }

 BUG();
 return -EINVAL;
}
