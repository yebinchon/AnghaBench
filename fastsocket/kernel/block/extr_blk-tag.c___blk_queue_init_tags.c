
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct blk_queue_tag {int refcnt; } ;


 int GFP_ATOMIC ;
 int atomic_set (int *,int) ;
 scalar_t__ init_tag_map (struct request_queue*,struct blk_queue_tag*,int) ;
 int kfree (struct blk_queue_tag*) ;
 struct blk_queue_tag* kmalloc (int,int ) ;

__attribute__((used)) static struct blk_queue_tag *__blk_queue_init_tags(struct request_queue *q,
         int depth)
{
 struct blk_queue_tag *tags;

 tags = kmalloc(sizeof(struct blk_queue_tag), GFP_ATOMIC);
 if (!tags)
  goto fail;

 if (init_tag_map(q, tags, depth))
  goto fail;

 atomic_set(&tags->refcnt, 1);
 return tags;
fail:
 kfree(tags);
 return ((void*)0);
}
