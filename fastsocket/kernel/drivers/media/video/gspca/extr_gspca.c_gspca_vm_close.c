
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {struct gspca_frame* vm_private_data; } ;
struct TYPE_2__ {int flags; } ;
struct gspca_frame {scalar_t__ vma_use_count; TYPE_1__ v4l2_buf; } ;


 int V4L2_BUF_FLAG_MAPPED ;

__attribute__((used)) static void gspca_vm_close(struct vm_area_struct *vma)
{
 struct gspca_frame *frame = vma->vm_private_data;

 if (--frame->vma_use_count <= 0)
  frame->v4l2_buf.flags &= ~V4L2_BUF_FLAG_MAPPED;
}
