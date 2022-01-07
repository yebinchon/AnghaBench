
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct file {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
struct TYPE_4__ {int lock; TYPE_1__* grab_buffer; int doneq; int grabq; } ;
struct TYPE_3__ {int state; } ;


 int MEYE_BUF_UNUSED ;
 int MEYE_MAX_BUFNBRS ;
 int kfifo_reset (int ) ;
 int mchip_hic_stop () ;
 TYPE_2__ meye ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int vidioc_streamoff(struct file *file, void *fh, enum v4l2_buf_type i)
{
 mutex_lock(&meye.lock);
 mchip_hic_stop();
 kfifo_reset(meye.grabq);
 kfifo_reset(meye.doneq);

 for (i = 0; i < MEYE_MAX_BUFNBRS; i++)
  meye.grab_buffer[i].state = MEYE_BUF_UNUSED;

 mutex_unlock(&meye.lock);
 return 0;
}
