
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int nr_congestion_off; } ;



__attribute__((used)) static inline int queue_congestion_off_threshold(struct request_queue *q)
{
 return q->nr_congestion_off;
}
