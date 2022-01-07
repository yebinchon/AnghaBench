
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iv_essiv_private {int salt; int tfm; int hash_tfm; } ;
struct TYPE_2__ {struct iv_essiv_private essiv; } ;
struct crypt_config {TYPE_1__ iv_gen_private; } ;


 int crypto_cipher_setkey (int ,int ,unsigned int) ;
 unsigned int crypto_hash_digestsize (int ) ;
 int memset (int ,int ,unsigned int) ;

__attribute__((used)) static int crypt_iv_essiv_wipe(struct crypt_config *cc)
{
 struct iv_essiv_private *essiv = &cc->iv_gen_private.essiv;
 unsigned salt_size = crypto_hash_digestsize(essiv->hash_tfm);

 memset(essiv->salt, 0, salt_size);

 return crypto_cipher_setkey(essiv->tfm, essiv->salt, salt_size);
}
