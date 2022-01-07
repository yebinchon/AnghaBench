
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct crypto_tfm {int crt_flags; } ;
struct cast6_ctx {int** Kr; int** Km; } ;
typedef int __be32 ;


 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 int W (int*,int) ;
 int be32_to_cpu (int ) ;
 struct cast6_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int memcpy (int *,int const*,unsigned int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int cast6_setkey(struct crypto_tfm *tfm, const u8 *in_key,
   unsigned key_len)
{
 int i;
 u32 key[8];
 __be32 p_key[8];
 struct cast6_ctx *c = crypto_tfm_ctx(tfm);
 u32 *flags = &tfm->crt_flags;

 if (key_len % 4 != 0) {
  *flags |= CRYPTO_TFM_RES_BAD_KEY_LEN;
  return -EINVAL;
 }

 memset (p_key, 0, 32);
 memcpy (p_key, in_key, key_len);

 key[0] = be32_to_cpu(p_key[0]);
 key[1] = be32_to_cpu(p_key[1]);
 key[2] = be32_to_cpu(p_key[2]);
 key[3] = be32_to_cpu(p_key[3]);
 key[4] = be32_to_cpu(p_key[4]);
 key[5] = be32_to_cpu(p_key[5]);
 key[6] = be32_to_cpu(p_key[6]);
 key[7] = be32_to_cpu(p_key[7]);



 for (i = 0; i < 12; i++) {
  W (key, 2 * i);
  W (key, 2 * i + 1);

  c->Kr[i][0] = key[0] & 0x1f;
  c->Kr[i][1] = key[2] & 0x1f;
  c->Kr[i][2] = key[4] & 0x1f;
  c->Kr[i][3] = key[6] & 0x1f;

  c->Km[i][0] = key[7];
  c->Km[i][1] = key[5];
  c->Km[i][2] = key[3];
  c->Km[i][3] = key[1];
 }

 return 0;
}
