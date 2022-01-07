
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_queue_tag {scalar_t__ max_depth; struct blk_queue_tag* tag_map; struct blk_queue_tag* tag_index; int refcnt; } ;


 int BUG_ON (int) ;
 int atomic_dec_and_test (int *) ;
 scalar_t__ find_first_bit (struct blk_queue_tag*,scalar_t__) ;
 int kfree (struct blk_queue_tag*) ;

__attribute__((used)) static int __blk_free_tags(struct blk_queue_tag *bqt)
{
 int retval;

 retval = atomic_dec_and_test(&bqt->refcnt);
 if (retval) {
  BUG_ON(find_first_bit(bqt->tag_map, bqt->max_depth) <
       bqt->max_depth);

  kfree(bqt->tag_index);
  bqt->tag_index = ((void*)0);

  kfree(bqt->tag_map);
  bqt->tag_map = ((void*)0);

  kfree(bqt);
 }

 return retval;
}
