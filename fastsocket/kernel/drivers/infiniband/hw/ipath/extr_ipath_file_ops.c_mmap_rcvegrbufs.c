
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {size_t vm_end; unsigned long vm_start; int vm_flags; int vm_page_prot; } ;
struct ipath_portdata {unsigned long port_rcvegrbuf_size; unsigned long port_rcvegrbuf_chunks; int * port_rcvegrbuf; struct ipath_devdata* port_dd; } ;
struct ipath_devdata {TYPE_1__* pcidev; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int EPERM ;
 unsigned long PAGE_SHIFT ;
 int VM_MAYWRITE ;
 int VM_WRITE ;
 int dev_info (int *,char*,int,...) ;
 int remap_pfn_range (struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int ) ;
 unsigned long virt_to_phys (int ) ;

__attribute__((used)) static int mmap_rcvegrbufs(struct vm_area_struct *vma,
      struct ipath_portdata *pd)
{
 struct ipath_devdata *dd = pd->port_dd;
 unsigned long start, size;
 size_t total_size, i;
 unsigned long pfn;
 int ret;

 size = pd->port_rcvegrbuf_size;
 total_size = pd->port_rcvegrbuf_chunks * size;
 if ((vma->vm_end - vma->vm_start) > total_size) {
  dev_info(&dd->pcidev->dev, "FAIL on egr bufs: "
    "reqlen %lx > actual %lx\n",
    vma->vm_end - vma->vm_start,
    (unsigned long) total_size);
  ret = -EINVAL;
  goto bail;
 }

 if (vma->vm_flags & VM_WRITE) {
  dev_info(&dd->pcidev->dev, "Can't map eager buffers as "
    "writable (flags=%lx)\n", vma->vm_flags);
  ret = -EPERM;
  goto bail;
 }

 vma->vm_flags &= ~VM_MAYWRITE;

 start = vma->vm_start;

 for (i = 0; i < pd->port_rcvegrbuf_chunks; i++, start += size) {
  pfn = virt_to_phys(pd->port_rcvegrbuf[i]) >> PAGE_SHIFT;
  ret = remap_pfn_range(vma, start, pfn, size,
          vma->vm_page_prot);
  if (ret < 0)
   goto bail;
 }
 ret = 0;

bail:
 return ret;
}
