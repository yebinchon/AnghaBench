
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpif_fh {TYPE_1__* channel; } ;
struct vm_area_struct {int dummy; } ;
struct file {struct vpif_fh* private_data; } ;
struct common_obj {int buffer_queue; } ;
struct TYPE_2__ {struct common_obj* common; } ;


 size_t VPIF_VIDEO_INDEX ;
 int videobuf_mmap_mapper (int *,struct vm_area_struct*) ;

__attribute__((used)) static int vpif_mmap(struct file *filep, struct vm_area_struct *vma)
{
 struct vpif_fh *fh = filep->private_data;
 struct common_obj *common = &fh->channel->common[VPIF_VIDEO_INDEX];

 return videobuf_mmap_mapper(&common->buffer_queue, vma);
}
