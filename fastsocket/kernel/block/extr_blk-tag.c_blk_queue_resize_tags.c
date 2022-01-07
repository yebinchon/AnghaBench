
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {struct blk_queue_tag* queue_tags; } ;
struct request {int dummy; } ;
struct blk_queue_tag {int real_max_depth; int max_depth; unsigned long* tag_map; struct request** tag_index; int refcnt; } ;


 int ALIGN (int,int) ;
 int BITS_PER_LONG ;
 int EBUSY ;
 int ENOMEM ;
 int ENXIO ;
 int atomic_read (int *) ;
 scalar_t__ init_tag_map (struct request_queue*,struct blk_queue_tag*,int) ;
 int kfree (unsigned long*) ;
 int memcpy (unsigned long*,unsigned long*,int) ;

int blk_queue_resize_tags(struct request_queue *q, int new_depth)
{
 struct blk_queue_tag *bqt = q->queue_tags;
 struct request **tag_index;
 unsigned long *tag_map;
 int max_depth, nr_ulongs;

 if (!bqt)
  return -ENXIO;







 if (new_depth <= bqt->real_max_depth) {
  bqt->max_depth = new_depth;
  return 0;
 }





 if (atomic_read(&bqt->refcnt) != 1)
  return -EBUSY;




 tag_index = bqt->tag_index;
 tag_map = bqt->tag_map;
 max_depth = bqt->real_max_depth;

 if (init_tag_map(q, bqt, new_depth))
  return -ENOMEM;

 memcpy(bqt->tag_index, tag_index, max_depth * sizeof(struct request *));
 nr_ulongs = ALIGN(max_depth, BITS_PER_LONG) / BITS_PER_LONG;
 memcpy(bqt->tag_map, tag_map, nr_ulongs * sizeof(unsigned long));

 kfree(tag_index);
 kfree(tag_map);
 return 0;
}
