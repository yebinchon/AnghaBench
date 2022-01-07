
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zc0301_frame_t {int vma_use_count; } ;
struct vm_area_struct {struct zc0301_frame_t* vm_private_data; } ;



__attribute__((used)) static void zc0301_vm_close(struct vm_area_struct* vma)
{

 struct zc0301_frame_t* f = vma->vm_private_data;
 f->vma_use_count--;
}
