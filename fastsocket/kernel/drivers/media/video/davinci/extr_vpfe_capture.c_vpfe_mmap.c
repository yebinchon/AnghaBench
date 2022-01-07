
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpfe_device {int buffer_queue; int v4l2_dev; } ;
struct vm_area_struct {int dummy; } ;
struct file {int dummy; } ;


 int debug ;
 int v4l2_dbg (int,int ,int *,char*) ;
 struct vpfe_device* video_drvdata (struct file*) ;
 int videobuf_mmap_mapper (int *,struct vm_area_struct*) ;

__attribute__((used)) static int vpfe_mmap(struct file *file, struct vm_area_struct *vma)
{

 struct vpfe_device *vpfe_dev = video_drvdata(file);

 v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_mmap\n");

 return videobuf_mmap_mapper(&vpfe_dev->buffer_queue, vma);
}
