
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct prng_context {int dummy; } ;
struct crypto_rng {int dummy; } ;


 struct prng_context* crypto_rng_ctx (struct crypto_rng*) ;
 int get_prng_bytes (int *,unsigned int,struct prng_context*,int ) ;

__attribute__((used)) static int cprng_get_random(struct crypto_rng *tfm, u8 *rdata,
       unsigned int dlen)
{
 struct prng_context *prng = crypto_rng_ctx(tfm);

 return get_prng_bytes(rdata, dlen, prng, 0);
}
