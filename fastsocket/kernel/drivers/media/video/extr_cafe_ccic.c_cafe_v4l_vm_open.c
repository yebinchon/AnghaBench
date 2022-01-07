
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct cafe_sio_buffer* vm_private_data; } ;
struct cafe_sio_buffer {int mapcount; } ;



__attribute__((used)) static void cafe_v4l_vm_open(struct vm_area_struct *vma)
{
 struct cafe_sio_buffer *sbuf = vma->vm_private_data;




 sbuf->mapcount++;
}
