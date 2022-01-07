
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpif_fh {struct channel_obj* channel; } ;
struct vm_area_struct {int dummy; } ;
struct file {struct vpif_fh* private_data; } ;
struct common_obj {int buffer_queue; } ;
struct channel_obj {struct common_obj* common; } ;


 size_t VPIF_VIDEO_INDEX ;
 int debug ;
 int videobuf_mmap_mapper (int *,struct vm_area_struct*) ;
 int vpif_dbg (int,int ,char*) ;

__attribute__((used)) static int vpif_mmap(struct file *filep, struct vm_area_struct *vma)
{

 struct vpif_fh *fh = filep->private_data;
 struct channel_obj *ch = fh->channel;
 struct common_obj *common = &(ch->common[VPIF_VIDEO_INDEX]);

 vpif_dbg(2, debug, "vpif_mmap\n");

 return videobuf_mmap_mapper(&common->buffer_queue, vma);
}
