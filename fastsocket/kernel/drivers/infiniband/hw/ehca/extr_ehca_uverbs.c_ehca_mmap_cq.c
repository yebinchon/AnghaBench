
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vm_area_struct {int dummy; } ;
struct TYPE_2__ {int device; } ;
struct ehca_cq {int cq_number; TYPE_1__ ib_cq; int mm_count_queue; int ipz_queue; int mm_count_galpa; int galpas; } ;


 int EINVAL ;
 int ehca_dbg (int ,char*,int ) ;
 int ehca_err (int ,char*,int,int ) ;
 int ehca_mmap_fw (struct vm_area_struct*,int *,int *) ;
 int ehca_mmap_queue (struct vm_area_struct*,int *,int *) ;
 int unlikely (int) ;

__attribute__((used)) static int ehca_mmap_cq(struct vm_area_struct *vma, struct ehca_cq *cq,
   u32 rsrc_type)
{
 int ret;

 switch (rsrc_type) {
 case 0:
  ehca_dbg(cq->ib_cq.device, "cq_num=%x fw", cq->cq_number);
  ret = ehca_mmap_fw(vma, &cq->galpas, &cq->mm_count_galpa);
  if (unlikely(ret)) {
   ehca_err(cq->ib_cq.device,
     "ehca_mmap_fw() failed rc=%i cq_num=%x",
     ret, cq->cq_number);
   return ret;
  }
  break;

 case 1:
  ehca_dbg(cq->ib_cq.device, "cq_num=%x queue", cq->cq_number);
  ret = ehca_mmap_queue(vma, &cq->ipz_queue, &cq->mm_count_queue);
  if (unlikely(ret)) {
   ehca_err(cq->ib_cq.device,
     "ehca_mmap_queue() failed rc=%i cq_num=%x",
     ret, cq->cq_number);
   return ret;
  }
  break;

 default:
  ehca_err(cq->ib_cq.device, "bad resource type=%x cq_num=%x",
    rsrc_type, cq->cq_number);
  return -EINVAL;
 }

 return 0;
}
