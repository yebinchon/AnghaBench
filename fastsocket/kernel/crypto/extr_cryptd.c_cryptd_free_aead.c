
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cryptd_aead {int base; } ;


 int crypto_free_aead (int *) ;

void cryptd_free_aead(struct cryptd_aead *tfm)
{
 crypto_free_aead(&tfm->base);
}
