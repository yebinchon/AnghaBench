
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_rng {int dummy; } ;


 int get_random_bytes (int *,unsigned int) ;

__attribute__((used)) static int krng_get_random(struct crypto_rng *tfm, u8 *rdata, unsigned int dlen)
{
 get_random_bytes(rdata, dlen);
 return 0;
}
