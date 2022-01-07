
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct crypto_rng {int dummy; } ;
struct TYPE_2__ {int (* rng_reset ) (struct crypto_rng*,int *,unsigned int) ;} ;


 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_1__* crypto_rng_alg (struct crypto_rng*) ;
 int get_random_bytes (int *,unsigned int) ;
 int kfree (int *) ;
 int * kmalloc (unsigned int,int ) ;
 int stub1 (struct crypto_rng*,int *,unsigned int) ;

__attribute__((used)) static int rngapi_reset(struct crypto_rng *tfm, u8 *seed, unsigned int slen)
{
 u8 *buf = ((void*)0);
 int err;

 if (!seed && slen) {
  buf = kmalloc(slen, GFP_KERNEL);
  if (!buf)
   return -ENOMEM;

  get_random_bytes(buf, slen);
  seed = buf;
 }

 err = crypto_rng_alg(tfm)->rng_reset(tfm, seed, slen);

 kfree(buf);
 return err;
}
