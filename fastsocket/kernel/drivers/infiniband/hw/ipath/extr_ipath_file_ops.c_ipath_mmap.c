
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u64 ;
struct vm_area_struct {unsigned int vm_pgoff; scalar_t__ vm_start; scalar_t__ vm_end; int * vm_private_data; } ;
struct ipath_portdata {int port_port; unsigned int port_subport_cnt; unsigned int port_piocnt; unsigned int port_piobufs; unsigned int port_rcvegr_phys; void* port_rcvhdrq; void* port_rcvhdrtail_kvaddr; scalar_t__ port_rcvhdrqtailaddr_phys; int port_rcvhdrq_size; scalar_t__ port_rcvhdrq_phys; struct ipath_devdata* port_dd; } ;
struct ipath_devdata {unsigned int ipath_uregbase; int ipath_ureg_align; unsigned int ipath_palign; unsigned int ipath_pioavailregs_phys; TYPE_1__* pcidev; scalar_t__ ipath_pioavailregs_dma; int ipath_unit; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int MM ;
 unsigned int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int dev_info (int *,char*,int,unsigned long long,scalar_t__) ;
 int ipath_cdbg (int ,char*,unsigned long long,scalar_t__,scalar_t__,int ,int,int) ;
 int ipath_mmap_mem (struct vm_area_struct*,struct ipath_portdata*,int ,int,void*,char*) ;
 int mmap_kvaddr (struct vm_area_struct*,unsigned int,struct ipath_portdata*,int) ;
 int mmap_piobufs (struct vm_area_struct*,struct ipath_devdata*,struct ipath_portdata*,unsigned int,unsigned int) ;
 int mmap_rcvegrbufs (struct vm_area_struct*,struct ipath_portdata*) ;
 int mmap_ureg (struct vm_area_struct*,struct ipath_devdata*,unsigned int) ;
 struct ipath_portdata* port_fp (struct file*) ;
 int subport_fp (struct file*) ;

__attribute__((used)) static int ipath_mmap(struct file *fp, struct vm_area_struct *vma)
{
 struct ipath_portdata *pd;
 struct ipath_devdata *dd;
 u64 pgaddr, ureg;
 unsigned piobufs, piocnt;
 int ret;

 pd = port_fp(fp);
 if (!pd) {
  ret = -EINVAL;
  goto bail;
 }
 dd = pd->port_dd;
 pgaddr = vma->vm_pgoff << PAGE_SHIFT;





 if (!pgaddr) {
  ret = -EINVAL;
  goto bail;
 }

 ipath_cdbg(MM, "pgaddr %llx vm_start=%lx len %lx port %u:%u:%u\n",
     (unsigned long long) pgaddr, vma->vm_start,
     vma->vm_end - vma->vm_start, dd->ipath_unit,
     pd->port_port, subport_fp(fp));






 ret = mmap_kvaddr(vma, pgaddr, pd, subport_fp(fp));
 if (ret) {
  if (ret > 0)
   ret = 0;
  goto bail;
 }

 ureg = dd->ipath_uregbase + dd->ipath_ureg_align * pd->port_port;
 if (!pd->port_subport_cnt) {

  piocnt = pd->port_piocnt;
  piobufs = pd->port_piobufs;
 } else if (!subport_fp(fp)) {

  piocnt = (pd->port_piocnt / pd->port_subport_cnt) +
    (pd->port_piocnt % pd->port_subport_cnt);
  piobufs = pd->port_piobufs +
   dd->ipath_palign * (pd->port_piocnt - piocnt);
 } else {
  unsigned slave = subport_fp(fp) - 1;


  piocnt = pd->port_piocnt / pd->port_subport_cnt;
  piobufs = pd->port_piobufs + dd->ipath_palign * piocnt * slave;
 }

 if (pgaddr == ureg)
  ret = mmap_ureg(vma, dd, ureg);
 else if (pgaddr == piobufs)
  ret = mmap_piobufs(vma, dd, pd, piobufs, piocnt);
 else if (pgaddr == dd->ipath_pioavailregs_phys)

  ret = ipath_mmap_mem(vma, pd, PAGE_SIZE, 0,
               (void *) dd->ipath_pioavailregs_dma,
         "pioavail registers");
 else if (pgaddr == pd->port_rcvegr_phys)
  ret = mmap_rcvegrbufs(vma, pd);
 else if (pgaddr == (u64) pd->port_rcvhdrq_phys)





  ret = ipath_mmap_mem(vma, pd, pd->port_rcvhdrq_size, 1,
         pd->port_rcvhdrq,
         "rcvhdrq");
 else if (pgaddr == (u64) pd->port_rcvhdrqtailaddr_phys)

  ret = ipath_mmap_mem(vma, pd, PAGE_SIZE, 0,
         pd->port_rcvhdrtail_kvaddr,
         "rcvhdrq tail");
 else
  ret = -EINVAL;

 vma->vm_private_data = ((void*)0);

 if (ret < 0)
  dev_info(&dd->pcidev->dev,
    "Failure %d on off %llx len %lx\n",
    -ret, (unsigned long long)pgaddr,
    vma->vm_end - vma->vm_start);
bail:
 return ret;
}
