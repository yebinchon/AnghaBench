
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {struct crypto_shash* tfm; } ;
struct shash_alg {int (* final ) (struct shash_desc*,int *) ;} ;
struct crypto_shash {int dummy; } ;


 int * PTR_ALIGN (int *,unsigned long) ;
 struct shash_alg* crypto_shash_alg (struct crypto_shash*) ;
 unsigned long crypto_shash_alignmask (struct crypto_shash*) ;
 unsigned int crypto_shash_digestsize (struct crypto_shash*) ;
 int memcpy (int *,int *,unsigned int) ;
 int memset (int *,int ,unsigned int) ;
 int shash_align_buffer_size (unsigned int,unsigned long) ;
 int stub1 (struct shash_desc*,int *) ;

__attribute__((used)) static int shash_final_unaligned(struct shash_desc *desc, u8 *out)
{
 struct crypto_shash *tfm = desc->tfm;
 unsigned long alignmask = crypto_shash_alignmask(tfm);
 struct shash_alg *shash = crypto_shash_alg(tfm);
 unsigned int ds = crypto_shash_digestsize(tfm);
 u8 ubuf[shash_align_buffer_size(ds, alignmask)]
  __attribute__ ((aligned));
 u8 *buf = PTR_ALIGN(&ubuf[0], alignmask + 1);
 int err;

 err = shash->final(desc, buf);
 if (err)
  goto out;

 memcpy(out, buf, ds);

out:
 memset(buf, 0, ds);
 return err;
}
