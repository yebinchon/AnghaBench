
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vmac_ctx_t {int dummy; } ;
struct crypto_shash {int dummy; } ;


 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 unsigned int VMAC_KEY_LEN ;
 struct vmac_ctx_t* crypto_shash_ctx (struct crypto_shash*) ;
 int crypto_shash_set_flags (struct crypto_shash*,int ) ;
 int vmac_set_key (int *,struct vmac_ctx_t*) ;

__attribute__((used)) static int vmac_setkey(struct crypto_shash *parent,
  const u8 *key, unsigned int keylen)
{
 struct vmac_ctx_t *ctx = crypto_shash_ctx(parent);

 if (keylen != VMAC_KEY_LEN) {
  crypto_shash_set_flags(parent, CRYPTO_TFM_RES_BAD_KEY_LEN);
  return -EINVAL;
 }

 return vmac_set_key((u8 *)key, ctx);
}
