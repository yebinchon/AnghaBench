
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iv_essiv_private {int * salt; int * hash_tfm; int * tfm; } ;
struct TYPE_2__ {struct iv_essiv_private essiv; } ;
struct crypt_config {TYPE_1__ iv_gen_private; } ;


 int crypto_free_cipher (int *) ;
 int crypto_free_hash (int *) ;
 int kzfree (int *) ;

__attribute__((used)) static void crypt_iv_essiv_dtr(struct crypt_config *cc)
{
 struct iv_essiv_private *essiv = &cc->iv_gen_private.essiv;

 crypto_free_cipher(essiv->tfm);
 essiv->tfm = ((void*)0);

 crypto_free_hash(essiv->hash_tfm);
 essiv->hash_tfm = ((void*)0);

 kzfree(essiv->salt);
 essiv->salt = ((void*)0);
}
