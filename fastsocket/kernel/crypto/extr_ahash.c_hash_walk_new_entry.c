
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {scalar_t__ length; int offset; } ;
struct crypto_hash_walk {scalar_t__ entrylen; scalar_t__ total; int offset; int pg; struct scatterlist* sg; } ;


 int hash_walk_next (struct crypto_hash_walk*) ;
 int sg_page (struct scatterlist*) ;

__attribute__((used)) static int hash_walk_new_entry(struct crypto_hash_walk *walk)
{
 struct scatterlist *sg;

 sg = walk->sg;
 walk->pg = sg_page(sg);
 walk->offset = sg->offset;
 walk->entrylen = sg->length;

 if (walk->entrylen > walk->total)
  walk->entrylen = walk->total;
 walk->total -= walk->entrylen;

 return hash_walk_next(walk);
}
