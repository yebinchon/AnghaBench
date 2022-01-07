
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qib_user_sdma_queue {int sent_counter; } ;



__attribute__((used)) static void qib_user_sdma_set_complete_counter(struct qib_user_sdma_queue *pq,
            u32 c)
{
 pq->sent_counter = c;
}
