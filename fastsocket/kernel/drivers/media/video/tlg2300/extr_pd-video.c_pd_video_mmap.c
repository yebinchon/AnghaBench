
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct front_face {int q; } ;
struct file {struct front_face* private_data; } ;


 int videobuf_mmap_mapper (int *,struct vm_area_struct*) ;

__attribute__((used)) static int pd_video_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct front_face *front = file->private_data;
 return videobuf_mmap_mapper(&front->q, vma);
}
