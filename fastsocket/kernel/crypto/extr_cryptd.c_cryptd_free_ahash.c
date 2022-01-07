
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cryptd_ahash {int base; } ;


 int crypto_free_ahash (int *) ;

void cryptd_free_ahash(struct cryptd_ahash *tfm)
{
 crypto_free_ahash(&tfm->base);
}
