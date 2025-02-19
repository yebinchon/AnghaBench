
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_aes_ctx {int dummy; } ;


 unsigned long AESNI_ALIGN ;
 scalar_t__ ALIGN (unsigned long,unsigned long) ;
 unsigned long crypto_tfm_ctx_alignment () ;

__attribute__((used)) static inline struct crypto_aes_ctx *aes_ctx(void *raw_ctx)
{
 unsigned long addr = (unsigned long)raw_ctx;
 unsigned long align = AESNI_ALIGN;

 if (align <= crypto_tfm_ctx_alignment())
  align = 1;
 return (struct crypto_aes_ctx *)ALIGN(addr, align);
}
