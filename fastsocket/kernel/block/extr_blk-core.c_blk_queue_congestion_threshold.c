
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int nr_requests; int nr_congestion_on; int nr_congestion_off; } ;



void blk_queue_congestion_threshold(struct request_queue *q)
{
 int nr;

 nr = q->nr_requests - (q->nr_requests / 8) + 1;
 if (nr > q->nr_requests)
  nr = q->nr_requests;
 q->nr_congestion_on = nr;

 nr = q->nr_requests - (q->nr_requests / 8) - (q->nr_requests / 16) - 1;
 if (nr < 1)
  nr = 1;
 q->nr_congestion_off = nr;
}
