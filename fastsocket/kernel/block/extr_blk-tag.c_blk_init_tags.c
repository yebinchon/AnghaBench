
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_queue_tag {int dummy; } ;


 struct blk_queue_tag* __blk_queue_init_tags (int *,int) ;

struct blk_queue_tag *blk_init_tags(int depth)
{
 return __blk_queue_init_tags(((void*)0), depth);
}
