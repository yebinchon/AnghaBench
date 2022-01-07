
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_tfm {int dummy; } ;


 int twofish_enc_blk (struct crypto_tfm*,int *,int const*) ;

__attribute__((used)) static void twofish_encrypt(struct crypto_tfm *tfm, u8 *dst, const u8 *src)
{
 twofish_enc_blk(tfm, dst, src);
}
