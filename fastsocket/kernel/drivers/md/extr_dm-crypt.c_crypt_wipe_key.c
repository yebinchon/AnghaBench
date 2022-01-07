
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypt_config {int key_size; int key; int tfm; int flags; } ;


 int DM_CRYPT_KEY_VALID ;
 int clear_bit (int ,int *) ;
 int crypto_ablkcipher_setkey (int ,int ,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int crypt_wipe_key(struct crypt_config *cc)
{
 clear_bit(DM_CRYPT_KEY_VALID, &cc->flags);
 memset(&cc->key, 0, cc->key_size * sizeof(u8));
 return crypto_ablkcipher_setkey(cc->tfm, cc->key, cc->key_size);
}
