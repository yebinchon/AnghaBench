
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct ib_uverbs_file {int ucontext; TYPE_2__* device; } ;
struct file {struct ib_uverbs_file* private_data; } ;
struct TYPE_4__ {TYPE_1__* ib_dev; } ;
struct TYPE_3__ {int (* mmap ) (int ,struct vm_area_struct*) ;} ;


 int ENODEV ;
 int stub1 (int ,struct vm_area_struct*) ;

__attribute__((used)) static int ib_uverbs_mmap(struct file *filp, struct vm_area_struct *vma)
{
 struct ib_uverbs_file *file = filp->private_data;

 if (!file->ucontext)
  return -ENODEV;
 else
  return file->device->ib_dev->mmap(file->ucontext, vma);
}
