
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipath_user_sdma_queue {int counter; } ;



u32 ipath_user_sdma_inflight_counter(struct ipath_user_sdma_queue *pq)
{
 return pq->counter;
}
