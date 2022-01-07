
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qib_user_sdma_queue {int sent_counter; } ;



u32 qib_user_sdma_complete_counter(const struct qib_user_sdma_queue *pq)
{
 return pq ? pq->sent_counter : 0;
}
