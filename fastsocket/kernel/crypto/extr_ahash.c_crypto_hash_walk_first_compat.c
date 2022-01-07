
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct hash_desc {int flags; int tfm; } ;
struct crypto_hash_walk {unsigned int total; int flags; struct scatterlist* sg; int alignmask; } ;


 int crypto_hash_alignmask (int ) ;
 int hash_walk_new_entry (struct crypto_hash_walk*) ;

int crypto_hash_walk_first_compat(struct hash_desc *hdesc,
      struct crypto_hash_walk *walk,
      struct scatterlist *sg, unsigned int len)
{
 walk->total = len;

 if (!walk->total)
  return 0;

 walk->alignmask = crypto_hash_alignmask(hdesc->tfm);
 walk->sg = sg;
 walk->flags = hdesc->flags;

 return hash_walk_new_entry(walk);
}
