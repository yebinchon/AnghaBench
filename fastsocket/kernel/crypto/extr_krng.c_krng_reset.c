
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_rng {int dummy; } ;



__attribute__((used)) static int krng_reset(struct crypto_rng *tfm, u8 *seed, unsigned int slen)
{
 return 0;
}
