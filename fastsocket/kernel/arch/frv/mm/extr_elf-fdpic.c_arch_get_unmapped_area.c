
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; struct vm_area_struct* vm_next; } ;
struct TYPE_8__ {TYPE_2__* dentry; } ;
struct file {TYPE_3__ f_path; } ;
struct TYPE_10__ {TYPE_4__* mm; } ;
struct TYPE_9__ {int start_stack; } ;
struct TYPE_6__ {char* name; } ;
struct TYPE_7__ {TYPE_1__ d_name; } ;


 unsigned long ENOMEM ;
 unsigned long MAP_FIXED ;
 unsigned long PAGE_ALIGN (int) ;
 unsigned long PAGE_SIZE ;
 unsigned long TASK_SIZE ;
 TYPE_5__* current ;
 struct vm_area_struct* find_vma (TYPE_4__*,unsigned long) ;
 int printk (char*,unsigned long,...) ;

unsigned long arch_get_unmapped_area(struct file *filp, unsigned long addr, unsigned long len,
         unsigned long pgoff, unsigned long flags)
{
 struct vm_area_struct *vma;
 unsigned long limit;

 if (len > TASK_SIZE)
  return -ENOMEM;


 if (flags & MAP_FIXED)
  return addr;


 if (addr) {
  addr = PAGE_ALIGN(addr);
  vma = find_vma(current->mm, addr);
  if (TASK_SIZE - len >= addr &&
      (!vma || addr + len <= vma->vm_start))
   goto success;
 }


 addr = PAGE_SIZE;
 limit = (current->mm->start_stack - 0x00200000);
 if (addr + len <= limit) {
  limit -= len;

  if (addr <= limit) {
   vma = find_vma(current->mm, PAGE_SIZE);
   for (; vma; vma = vma->vm_next) {
    if (addr > limit)
     break;
    if (addr + len <= vma->vm_start)
     goto success;
    addr = vma->vm_end;
   }
  }
 }


 addr = PAGE_ALIGN(0x80000000);
 limit = TASK_SIZE - len;
 if (addr <= limit) {
  vma = find_vma(current->mm, addr);
  for (; vma; vma = vma->vm_next) {
   if (addr > limit)
    break;
   if (addr + len <= vma->vm_start)
    goto success;
   addr = vma->vm_end;
  }

  if (!vma && addr <= limit)
   goto success;
 }





 return -ENOMEM;

 success:




 return addr;
}
