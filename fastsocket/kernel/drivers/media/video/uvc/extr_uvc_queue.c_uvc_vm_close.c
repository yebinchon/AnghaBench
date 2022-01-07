
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct uvc_buffer* vm_private_data; } ;
struct uvc_buffer {int vma_use_count; } ;



__attribute__((used)) static void uvc_vm_close(struct vm_area_struct *vma)
{
 struct uvc_buffer *buffer = vma->vm_private_data;
 buffer->vma_use_count--;
}
