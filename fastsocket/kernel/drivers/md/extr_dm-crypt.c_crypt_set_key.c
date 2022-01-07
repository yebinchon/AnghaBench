
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypt_config {int key_size; int flags; int key; int tfm; } ;


 int DM_CRYPT_KEY_VALID ;
 int EINVAL ;
 scalar_t__ crypt_decode_key (int ,char*,int) ;
 int crypto_ablkcipher_setkey (int ,int ,int) ;
 int memset (char*,int ,int) ;
 int set_bit (int ,int *) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int crypt_set_key(struct crypt_config *cc, char *key)
{
 int r = -EINVAL;
 int key_string_len = strlen(key);


 if (cc->key_size != (key_string_len >> 1))
  goto out;


 if (!cc->key_size && strcmp(key, "-"))
  goto out;

 if (cc->key_size && crypt_decode_key(cc->key, key, cc->key_size) < 0)
  goto out;

 r = crypto_ablkcipher_setkey(cc->tfm, cc->key, cc->key_size);
 if (!r)
  set_bit(DM_CRYPT_KEY_VALID, &cc->flags);
out:

 memset(key, '0', key_string_len);

 return r;
}
