
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;
struct mtd_info {scalar_t__ type; } ;
struct mtd_file_info {struct mtd_info* mtd; } ;
struct file {struct mtd_file_info* private_data; } ;


 int ENOSYS ;
 scalar_t__ MTD_RAM ;
 scalar_t__ MTD_ROM ;
 int VM_SHARED ;

__attribute__((used)) static int mtd_mmap(struct file *file, struct vm_area_struct *vma)
{
 return vma->vm_flags & VM_SHARED ? 0 : -ENOSYS;

}
