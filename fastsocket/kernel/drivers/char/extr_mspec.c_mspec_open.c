
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vma_data {int refcnt; } ;
struct vm_area_struct {struct vma_data* vm_private_data; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static void
mspec_open(struct vm_area_struct *vma)
{
 struct vma_data *vdata;

 vdata = vma->vm_private_data;
 atomic_inc(&vdata->refcnt);
}
