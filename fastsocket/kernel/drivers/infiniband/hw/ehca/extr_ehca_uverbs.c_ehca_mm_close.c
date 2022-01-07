
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vm_area_struct {int vm_end; int vm_start; scalar_t__ vm_private_data; } ;


 int ehca_gen_dbg (char*,int ,int ,int ) ;
 int ehca_gen_err (char*,int ,int ) ;

__attribute__((used)) static void ehca_mm_close(struct vm_area_struct *vma)
{
 u32 *count = (u32 *)vma->vm_private_data;
 if (!count) {
  ehca_gen_err("Invalid vma struct vm_start=%lx vm_end=%lx",
        vma->vm_start, vma->vm_end);
  return;
 }
 (*count)--;
 ehca_gen_dbg("vm_start=%lx vm_end=%lx count=%x",
       vma->vm_start, vma->vm_end, *count);
}
