
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reqsize; } ;
struct crypto_tfm {TYPE_1__ crt_ablkcipher; } ;
struct ablk_ctx {int dummy; } ;


 int init_tfm (struct crypto_tfm*) ;

__attribute__((used)) static int init_tfm_ablk(struct crypto_tfm *tfm)
{
 tfm->crt_ablkcipher.reqsize = sizeof(struct ablk_ctx);
 return init_tfm(tfm);
}
