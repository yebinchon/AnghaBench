
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hash_desc {int tfm; } ;
struct crypto_tfm {TYPE_2__* __crt_alg; } ;
struct TYPE_3__ {int (* dia_init ) (struct crypto_tfm*) ;} ;
struct TYPE_4__ {TYPE_1__ cra_digest; } ;


 struct crypto_tfm* crypto_hash_tfm (int ) ;
 int stub1 (struct crypto_tfm*) ;

__attribute__((used)) static int init(struct hash_desc *desc)
{
 struct crypto_tfm *tfm = crypto_hash_tfm(desc->tfm);

 tfm->__crt_alg->cra_digest.dia_init(tfm);
 return 0;
}
