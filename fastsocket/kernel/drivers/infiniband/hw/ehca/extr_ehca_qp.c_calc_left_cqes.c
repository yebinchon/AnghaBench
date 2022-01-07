
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u64 ;
typedef unsigned int u32 ;
struct ipz_queue {unsigned long qe_size; } ;
struct ehca_queue_map {unsigned int tail; unsigned int next_wqe_idx; int entries; int left_to_poll; TYPE_1__* map; } ;
struct TYPE_2__ {scalar_t__ cqe_req; } ;


 int EFAULT ;
 void* abs_to_virt (unsigned long) ;
 int ehca_gen_err (char*,unsigned long,void*) ;
 scalar_t__ ipz_queue_abs_to_offset (struct ipz_queue*,unsigned long,unsigned long*) ;
 unsigned int next_index (unsigned int,int ) ;

__attribute__((used)) static int calc_left_cqes(u64 wqe_p, struct ipz_queue *ipz_queue,
     struct ehca_queue_map *qmap)
{
 void *wqe_v;
 u64 q_ofs;
 u32 wqe_idx;
 unsigned int tail_idx;


 wqe_p = wqe_p & (~(1UL << 63));

 wqe_v = abs_to_virt(wqe_p);

 if (ipz_queue_abs_to_offset(ipz_queue, wqe_p, &q_ofs)) {
  ehca_gen_err("Invalid offset for calculating left cqes "
    "wqe_p=%#llx wqe_v=%p\n", wqe_p, wqe_v);
  return -EFAULT;
 }

 tail_idx = next_index(qmap->tail, qmap->entries);
 wqe_idx = q_ofs / ipz_queue->qe_size;


 while (tail_idx != wqe_idx) {
  if (qmap->map[tail_idx].cqe_req)
   qmap->left_to_poll++;
  tail_idx = next_index(tail_idx, qmap->entries);
 }

 qmap->next_wqe_idx = wqe_idx;
 return 0;
}
