
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int dummy; } ;
struct scatterlist {int dummy; } ;
struct hash_desc {int tfm; } ;
struct crypto_hash_walk {int data; } ;


 struct shash_desc** crypto_hash_ctx (int ) ;
 int crypto_hash_walk_done (struct crypto_hash_walk*,int) ;
 int crypto_hash_walk_first_compat (struct hash_desc*,struct crypto_hash_walk*,struct scatterlist*,unsigned int) ;
 int crypto_shash_update (struct shash_desc*,int ,int) ;

__attribute__((used)) static int shash_compat_update(struct hash_desc *hdesc, struct scatterlist *sg,
          unsigned int len)
{
 struct shash_desc **descp = crypto_hash_ctx(hdesc->tfm);
 struct shash_desc *desc = *descp;
 struct crypto_hash_walk walk;
 int nbytes;

 for (nbytes = crypto_hash_walk_first_compat(hdesc, &walk, sg, len);
      nbytes > 0; nbytes = crypto_hash_walk_done(&walk, nbytes))
  nbytes = crypto_shash_update(desc, walk.data, nbytes);

 return nbytes;
}
