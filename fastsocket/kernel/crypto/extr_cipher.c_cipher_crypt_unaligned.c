
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
struct crypto_tfm {int dummy; } ;


 scalar_t__ ALIGN (unsigned long,unsigned long) ;
 unsigned long crypto_tfm_alg_alignmask (struct crypto_tfm*) ;
 unsigned int crypto_tfm_alg_blocksize (struct crypto_tfm*) ;
 int memcpy (int const*,int const*,unsigned int) ;

__attribute__((used)) static void cipher_crypt_unaligned(void (*fn)(struct crypto_tfm *, u8 *,
           const u8 *),
       struct crypto_tfm *tfm,
       u8 *dst, const u8 *src)
{
 unsigned long alignmask = crypto_tfm_alg_alignmask(tfm);
 unsigned int size = crypto_tfm_alg_blocksize(tfm);
 u8 buffer[size + alignmask];
 u8 *tmp = (u8 *)ALIGN((unsigned long)buffer, alignmask + 1);

 memcpy(tmp, src, size);
 fn(tfm, tmp, tmp);
 memcpy(dst, tmp, size);
}
