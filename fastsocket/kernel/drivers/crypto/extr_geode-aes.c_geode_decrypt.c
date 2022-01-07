
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int cip; } ;
struct geode_aes_op {scalar_t__ keylen; int dir; int len; scalar_t__ flags; int mode; void* dst; void* src; TYPE_1__ fallback; } ;
struct crypto_tfm {int dummy; } ;


 int AES_DIR_DECRYPT ;
 scalar_t__ AES_KEYSIZE_128 ;
 int AES_MIN_BLOCK_SIZE ;
 int AES_MODE_ECB ;
 int crypto_cipher_decrypt_one (int ,int *,int const*) ;
 struct geode_aes_op* crypto_tfm_ctx (struct crypto_tfm*) ;
 int geode_aes_crypt (struct geode_aes_op*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
geode_decrypt(struct crypto_tfm *tfm, u8 *out, const u8 *in)
{
 struct geode_aes_op *op = crypto_tfm_ctx(tfm);

 if (unlikely(op->keylen != AES_KEYSIZE_128)) {
  crypto_cipher_decrypt_one(op->fallback.cip, out, in);
  return;
 }

 op->src = (void *) in;
 op->dst = (void *) out;
 op->mode = AES_MODE_ECB;
 op->flags = 0;
 op->len = AES_MIN_BLOCK_SIZE;
 op->dir = AES_DIR_DECRYPT;

 geode_aes_crypt(op);
}
