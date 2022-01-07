
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct sn9c102_frame_t* vm_private_data; } ;
struct sn9c102_frame_t {int vma_use_count; } ;



__attribute__((used)) static void sn9c102_vm_open(struct vm_area_struct* vma)
{
 struct sn9c102_frame_t* f = vma->vm_private_data;
 f->vma_use_count++;
}
