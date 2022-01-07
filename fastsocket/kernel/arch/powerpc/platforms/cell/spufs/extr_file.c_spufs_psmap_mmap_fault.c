
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_fault {int dummy; } ;
struct vm_area_struct {int dummy; } ;


 int SPUFS_PS_MAP_SIZE ;
 int spufs_ps_fault (struct vm_area_struct*,struct vm_fault*,int,int ) ;

__attribute__((used)) static int
spufs_psmap_mmap_fault(struct vm_area_struct *vma, struct vm_fault *vmf)
{
 return spufs_ps_fault(vma, vmf, 0x0000, SPUFS_PS_MAP_SIZE);
}
