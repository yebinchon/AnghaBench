
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int dummy; } ;
typedef int drv_name ;


 int CRYPTO_MAX_ALG_NAME ;
 int ablk_init_common (struct crypto_tfm*,char*) ;
 char* crypto_tfm_alg_driver_name (struct crypto_tfm*) ;
 int snprintf (char*,int,char*,char*) ;

int ablk_init(struct crypto_tfm *tfm)
{
 char drv_name[CRYPTO_MAX_ALG_NAME];

 snprintf(drv_name, sizeof(drv_name), "__driver-%s",
     crypto_tfm_alg_driver_name(tfm));

 return ablk_init_common(tfm, drv_name);
}
