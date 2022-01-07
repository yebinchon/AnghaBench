
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int dummy; } ;


 int ablk_init_common (struct crypto_tfm*,char*) ;

__attribute__((used)) static int ablk_cbc_init(struct crypto_tfm *tfm)
{
 return ablk_init_common(tfm, "__driver-cbc-aes-aesni");
}
