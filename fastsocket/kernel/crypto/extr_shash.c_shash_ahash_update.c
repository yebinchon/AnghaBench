
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int dummy; } ;
struct crypto_hash_walk {int data; } ;
struct ahash_request {int dummy; } ;


 int crypto_hash_walk_done (struct crypto_hash_walk*,int) ;
 int crypto_hash_walk_first (struct ahash_request*,struct crypto_hash_walk*) ;
 int crypto_shash_update (struct shash_desc*,int ,int) ;

int shash_ahash_update(struct ahash_request *req, struct shash_desc *desc)
{
 struct crypto_hash_walk walk;
 int nbytes;

 for (nbytes = crypto_hash_walk_first(req, &walk); nbytes > 0;
      nbytes = crypto_hash_walk_done(&walk, nbytes))
  nbytes = crypto_shash_update(desc, walk.data, nbytes);

 return nbytes;
}
