
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cryptd_ablkcipher {int base; } ;


 int crypto_free_ablkcipher (int *) ;

void cryptd_free_ablkcipher(struct cryptd_ablkcipher *tfm)
{
 crypto_free_ablkcipher(&tfm->base);
}
