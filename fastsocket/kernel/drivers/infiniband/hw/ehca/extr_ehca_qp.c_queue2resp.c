
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipzu_queue_resp {int offset; int toggle_state; int pagesize; int queue_length; int act_nr_of_sg; int qe_size; } ;
struct ipz_queue {int offset; int toggle_state; int pagesize; int queue_length; int act_nr_of_sg; int qe_size; } ;



__attribute__((used)) static inline void queue2resp(struct ipzu_queue_resp *resp,
         struct ipz_queue *queue)
{
 resp->qe_size = queue->qe_size;
 resp->act_nr_of_sg = queue->act_nr_of_sg;
 resp->queue_length = queue->queue_length;
 resp->pagesize = queue->pagesize;
 resp->toggle_state = queue->toggle_state;
 resp->offset = queue->offset;
}
