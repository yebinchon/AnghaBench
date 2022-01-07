
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;


 scalar_t__ blk_queue_nonrot (struct request_queue*) ;
 scalar_t__ blk_queue_tagged (struct request_queue*) ;

__attribute__((used)) static inline bool queue_should_plug(struct request_queue *q)
{
 return !(blk_queue_nonrot(q) && blk_queue_tagged(q));
}
