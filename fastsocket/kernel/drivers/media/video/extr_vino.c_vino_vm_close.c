
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct vino_framebuffer* vm_private_data; } ;
struct vino_framebuffer {int map_count; } ;


 int dprintk (char*,int ) ;

__attribute__((used)) static void vino_vm_close(struct vm_area_struct *vma)
{
 struct vino_framebuffer *fb = vma->vm_private_data;

 fb->map_count--;
 dprintk("vino_vm_close(): count = %d\n", fb->map_count);
}
