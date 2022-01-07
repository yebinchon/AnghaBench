
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vm_area_struct {int dummy; } ;
struct TYPE_2__ {int qp_num; int device; } ;
struct ehca_qp {TYPE_1__ ib_qp; int mm_count_squeue; int ipz_squeue; int mm_count_rqueue; int ipz_rqueue; int mm_count_galpa; int galpas; } ;


 int EINVAL ;
 int ENOMEM ;
 int ehca_dbg (int ,char*,int ) ;
 int ehca_err (int ,char*,int,int ) ;
 int ehca_mmap_fw (struct vm_area_struct*,int *,int *) ;
 int ehca_mmap_queue (struct vm_area_struct*,int *,int *) ;
 int unlikely (int) ;

__attribute__((used)) static int ehca_mmap_qp(struct vm_area_struct *vma, struct ehca_qp *qp,
   u32 rsrc_type)
{
 int ret;

 switch (rsrc_type) {
 case 0:
  ehca_dbg(qp->ib_qp.device, "qp_num=%x fw", qp->ib_qp.qp_num);
  ret = ehca_mmap_fw(vma, &qp->galpas, &qp->mm_count_galpa);
  if (unlikely(ret)) {
   ehca_err(qp->ib_qp.device,
     "remap_pfn_range() failed ret=%i qp_num=%x",
     ret, qp->ib_qp.qp_num);
   return -ENOMEM;
  }
  break;

 case 1:
  ehca_dbg(qp->ib_qp.device, "qp_num=%x rq", qp->ib_qp.qp_num);
  ret = ehca_mmap_queue(vma, &qp->ipz_rqueue,
          &qp->mm_count_rqueue);
  if (unlikely(ret)) {
   ehca_err(qp->ib_qp.device,
     "ehca_mmap_queue(rq) failed rc=%i qp_num=%x",
     ret, qp->ib_qp.qp_num);
   return ret;
  }
  break;

 case 2:
  ehca_dbg(qp->ib_qp.device, "qp_num=%x sq", qp->ib_qp.qp_num);
  ret = ehca_mmap_queue(vma, &qp->ipz_squeue,
          &qp->mm_count_squeue);
  if (unlikely(ret)) {
   ehca_err(qp->ib_qp.device,
     "ehca_mmap_queue(sq) failed rc=%i qp_num=%x",
     ret, qp->ib_qp.qp_num);
   return ret;
  }
  break;

 default:
  ehca_err(qp->ib_qp.device, "bad resource type=%x qp=num=%x",
    rsrc_type, qp->ib_qp.qp_num);
  return -EINVAL;
 }

 return 0;
}
