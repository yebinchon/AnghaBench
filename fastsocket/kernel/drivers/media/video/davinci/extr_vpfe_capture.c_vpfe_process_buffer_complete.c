
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int sizeimage; } ;
struct TYPE_5__ {TYPE_4__ pix; } ;
struct TYPE_6__ {TYPE_1__ fmt; } ;
struct vpfe_device {TYPE_3__* next_frm; TYPE_3__* cur_frm; TYPE_2__ fmt; } ;
struct timeval {int dummy; } ;
struct TYPE_7__ {int done; int size; int state; struct timeval ts; } ;


 int VIDEOBUF_DONE ;
 int do_gettimeofday (struct timeval*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void vpfe_process_buffer_complete(struct vpfe_device *vpfe_dev)
{
 struct timeval timevalue;

 do_gettimeofday(&timevalue);
 vpfe_dev->cur_frm->ts = timevalue;
 vpfe_dev->cur_frm->state = VIDEOBUF_DONE;
 vpfe_dev->cur_frm->size = vpfe_dev->fmt.fmt.pix.sizeimage;
 wake_up_interruptible(&vpfe_dev->cur_frm->done);
 vpfe_dev->cur_frm = vpfe_dev->next_frm;
}
