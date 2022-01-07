
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_queue_tag {int dummy; } ;


 int BUG () ;
 int __blk_free_tags (struct blk_queue_tag*) ;
 scalar_t__ unlikely (int) ;

void blk_free_tags(struct blk_queue_tag *bqt)
{
 if (unlikely(!__blk_free_tags(bqt)))
  BUG();
}
