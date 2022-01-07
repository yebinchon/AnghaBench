
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_end; unsigned long vm_start; scalar_t__ vm_pgoff; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int TGT_RING_SIZE ;
 int eprintk (char*,int,int) ;
 int rx_ring ;
 int tx_ring ;
 int uspace_ring_map (struct vm_area_struct*,unsigned long,int *) ;

__attribute__((used)) static int tgt_mmap(struct file *filp, struct vm_area_struct *vma)
{
 unsigned long addr;
 int err;

 if (vma->vm_pgoff)
  return -EINVAL;

 if (vma->vm_end - vma->vm_start != TGT_RING_SIZE * 2) {
  eprintk("mmap size must be %lu, not %lu \n",
   TGT_RING_SIZE * 2, vma->vm_end - vma->vm_start);
  return -EINVAL;
 }

 addr = vma->vm_start;
 err = uspace_ring_map(vma, addr, &tx_ring);
 if (err)
  return err;
 err = uspace_ring_map(vma, addr + TGT_RING_SIZE, &rx_ring);

 return err;
}
