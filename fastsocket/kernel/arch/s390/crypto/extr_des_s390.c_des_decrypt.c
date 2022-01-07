
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_tfm {int dummy; } ;
struct crypt_s390_des_ctx {int key; } ;


 int DES_BLOCK_SIZE ;
 int KM_DEA_DECRYPT ;
 int crypt_s390_km (int ,int ,int *,int const*,int ) ;
 struct crypt_s390_des_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void des_decrypt(struct crypto_tfm *tfm, u8 *out, const u8 *in)
{
 struct crypt_s390_des_ctx *dctx = crypto_tfm_ctx(tfm);

 crypt_s390_km(KM_DEA_DECRYPT, dctx->key, out, in, DES_BLOCK_SIZE);
}
