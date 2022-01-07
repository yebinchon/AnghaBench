
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hmac_ctx {int dummy; } ;
struct crypto_shash {int dummy; } ;


 struct hmac_ctx* align_ptr (scalar_t__,int ) ;
 scalar_t__ crypto_shash_ctx_aligned (struct crypto_shash*) ;
 int crypto_shash_statesize (struct crypto_shash*) ;
 int crypto_tfm_ctx_alignment () ;

__attribute__((used)) static inline struct hmac_ctx *hmac_ctx(struct crypto_shash *tfm)
{
 return align_ptr(crypto_shash_ctx_aligned(tfm) +
    crypto_shash_statesize(tfm) * 2,
    crypto_tfm_ctx_alignment());
}
