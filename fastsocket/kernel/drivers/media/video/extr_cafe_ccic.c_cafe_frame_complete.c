
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cafe_camera {int next_buf; int state; int s_tasklet; int iowait; int nbufs; int specframes; scalar_t__ sequence; scalar_t__* buf_seq; int flags; } ;


 int CF_DMA_ACTIVE ;
 int S_IDLE ;



 int cafe_ctlr_irq_disable (struct cafe_camera*) ;
 int cafe_ctlr_stop (struct cafe_camera*) ;
 int cam_err (struct cafe_camera*,char*,...) ;
 int clear_bit (int ,int *) ;
 scalar_t__ printk_ratelimit () ;
 int set_bit (int,int *) ;
 int tasklet_schedule (int *) ;
 scalar_t__ test_bit (int,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void cafe_frame_complete(struct cafe_camera *cam, int frame)
{



 if (test_bit(frame, &cam->flags) && printk_ratelimit())
  cam_err(cam, "Frame overrun on %d, frames lost\n", frame);
 set_bit(frame, &cam->flags);
 clear_bit(CF_DMA_ACTIVE, &cam->flags);
 if (cam->next_buf < 0)
  cam->next_buf = frame;
 cam->buf_seq[frame] = ++(cam->sequence);

 switch (cam->state) {



     case 130:
  cam->state = 129;
  cam->specframes = 0;
  wake_up(&cam->iowait);
  break;





     case 129:
  if (++(cam->specframes) >= cam->nbufs) {
   cafe_ctlr_stop(cam);
   cafe_ctlr_irq_disable(cam);
   cam->state = S_IDLE;
  }
  wake_up(&cam->iowait);
  break;
     case 128:
  tasklet_schedule(&cam->s_tasklet);
  break;

     default:
  cam_err(cam, "Frame interrupt in non-operational state\n");
  break;
 }
}
