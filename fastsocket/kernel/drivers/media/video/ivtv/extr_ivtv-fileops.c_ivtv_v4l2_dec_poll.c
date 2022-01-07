
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ buffers; } ;
struct ivtv_stream {TYPE_2__ q_free; int waitq; } ;
struct TYPE_6__ {TYPE_1__* events; } ;
struct ivtv_open_id {size_t type; TYPE_3__ fh; struct ivtv* itv; } ;
struct ivtv {int i_flags; struct ivtv_stream* streams; } ;
struct file {int private_data; } ;
typedef int poll_table ;
struct TYPE_4__ {int wait; int subscribed; } ;


 int IVTV_DEBUG_HI_FILE (char*) ;
 int IVTV_F_I_EV_DEC_STOPPED ;
 int IVTV_F_I_EV_VSYNC ;
 int IVTV_F_I_EV_VSYNC_ENABLED ;
 int POLLOUT ;
 int POLLPRI ;
 int POLLWRNORM ;
 int clear_bit (int ,int *) ;
 struct ivtv_open_id* fh2id (int ) ;
 int list_empty (int *) ;
 int poll_wait (struct file*,int *,int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ v4l2_event_pending (TYPE_3__*) ;

unsigned int ivtv_v4l2_dec_poll(struct file *filp, poll_table *wait)
{
 struct ivtv_open_id *id = fh2id(filp->private_data);
 struct ivtv *itv = id->itv;
 struct ivtv_stream *s = &itv->streams[id->type];
 int res = 0;


 IVTV_DEBUG_HI_FILE("Decoder poll\n");



 if (!list_empty(&id->fh.events->subscribed)) {
  poll_wait(filp, &id->fh.events->wait, wait);

  clear_bit(IVTV_F_I_EV_VSYNC_ENABLED, &itv->i_flags);
  if (v4l2_event_pending(&id->fh))
   res = POLLPRI;
 } else {


  poll_wait(filp, &s->waitq, wait);
  set_bit(IVTV_F_I_EV_VSYNC_ENABLED, &itv->i_flags);
  if (test_bit(IVTV_F_I_EV_VSYNC, &itv->i_flags) ||
      test_bit(IVTV_F_I_EV_DEC_STOPPED, &itv->i_flags))
   res = POLLPRI;
 }


 if (s->q_free.buffers)
  res |= POLLOUT | POLLWRNORM;
 return res;
}
