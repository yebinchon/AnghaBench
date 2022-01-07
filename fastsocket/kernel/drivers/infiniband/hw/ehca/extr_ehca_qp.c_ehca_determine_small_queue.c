
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ehca_alloc_queue_parms {int max_wr; int page_size; int is_small; } ;


 int ehca_calc_wqe_size (int,int) ;

__attribute__((used)) static void ehca_determine_small_queue(struct ehca_alloc_queue_parms *queue,
           int req_nr_sge, int is_llqp)
{
 u32 wqe_size, q_size;
 int act_nr_sge = req_nr_sge;

 if (!is_llqp)

  for (act_nr_sge = 4; act_nr_sge <= 252;
       act_nr_sge = 4 + 2 * act_nr_sge)
   if (act_nr_sge >= req_nr_sge)
    break;

 wqe_size = ehca_calc_wqe_size(act_nr_sge, is_llqp);
 q_size = wqe_size * (queue->max_wr + 1);

 if (q_size <= 512)
  queue->page_size = 2;
 else if (q_size <= 1024)
  queue->page_size = 3;
 else
  queue->page_size = 0;

 queue->is_small = (queue->page_size != 0);
}
