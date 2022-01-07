
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int queue_tags; } ;
struct request {int dummy; } ;


 struct request* blk_map_queue_find_tag (int ,int) ;

struct request *blk_queue_find_tag(struct request_queue *q, int tag)
{
 return blk_map_queue_find_tag(q->queue_tags, tag);
}
