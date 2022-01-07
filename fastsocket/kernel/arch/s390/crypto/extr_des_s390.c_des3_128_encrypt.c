
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_tfm {int dummy; } ;
struct crypt_s390_des3_128_ctx {int key; } ;


 int DES3_128_BLOCK_SIZE ;
 int KM_TDEA_128_ENCRYPT ;
 int crypt_s390_km (int ,int ,int *,void*,int ) ;
 struct crypt_s390_des3_128_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void des3_128_encrypt(struct crypto_tfm *tfm, u8 *dst, const u8 *src)
{
 struct crypt_s390_des3_128_ctx *dctx = crypto_tfm_ctx(tfm);

 crypt_s390_km(KM_TDEA_128_ENCRYPT, dctx->key, dst, (void*)src,
        DES3_128_BLOCK_SIZE);
}
