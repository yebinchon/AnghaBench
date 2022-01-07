
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {struct bio* bi_next; int * bi_bdev; int bi_max_vecs; } ;
typedef int gfp_t ;


 int OSDBLK_DEBUG (char*) ;
 int __GFP_WAIT ;
 int __bio_clone (struct bio*,struct bio*) ;
 int bio_chain_put (struct bio*) ;
 struct bio* bio_kmalloc (int ,int ) ;

__attribute__((used)) static struct bio *bio_chain_clone(struct bio *old_chain, gfp_t gfpmask)
{
 struct bio *tmp, *new_chain = ((void*)0), *tail = ((void*)0);

 while (old_chain) {
  tmp = bio_kmalloc(gfpmask, old_chain->bi_max_vecs);
  if (!tmp)
   goto err_out;

  __bio_clone(tmp, old_chain);
  tmp->bi_bdev = ((void*)0);
  gfpmask &= ~__GFP_WAIT;
  tmp->bi_next = ((void*)0);

  if (!new_chain)
   new_chain = tail = tmp;
  else {
   tail->bi_next = tmp;
   tail = tmp;
  }

  old_chain = old_chain->bi_next;
 }

 return new_chain;

err_out:
 OSDBLK_DEBUG("bio_chain_clone with err\n");
 bio_chain_put(new_chain);
 return ((void*)0);
}
