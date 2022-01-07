
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct et61x251_frame_t* vm_private_data; } ;
struct et61x251_frame_t {int vma_use_count; } ;



__attribute__((used)) static void et61x251_vm_open(struct vm_area_struct* vma)
{
 struct et61x251_frame_t* f = vma->vm_private_data;
 f->vma_use_count++;
}
