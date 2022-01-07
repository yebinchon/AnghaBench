
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ length; } ;
struct TYPE_3__ {scalar_t__ length; } ;
struct ivtv_stream {TYPE_2__ q_io; TYPE_1__ q_full; int waitq; int name; int s_flags; } ;
struct ivtv_open_id {size_t type; struct ivtv* itv; } ;
struct ivtv {int serialize_lock; struct ivtv_stream* streams; } ;
struct file {int private_data; } ;
typedef int poll_table ;


 int IVTV_DEBUG_FILE (char*) ;
 int IVTV_DEBUG_HI_FILE (char*) ;
 int IVTV_DEBUG_INFO (char*,int ,int) ;
 int IVTV_F_S_STREAMING ;
 int IVTV_F_S_STREAMOFF ;
 unsigned int POLLERR ;
 unsigned int POLLHUP ;
 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 struct ivtv_open_id* fh2id (int ) ;
 int ivtv_start_capture (struct ivtv_open_id*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int poll_wait (struct file*,int *,int *) ;
 int test_bit (int ,int *) ;

unsigned int ivtv_v4l2_enc_poll(struct file *filp, poll_table * wait)
{
 struct ivtv_open_id *id = fh2id(filp->private_data);
 struct ivtv *itv = id->itv;
 struct ivtv_stream *s = &itv->streams[id->type];
 int eof = test_bit(IVTV_F_S_STREAMOFF, &s->s_flags);


 if (!eof && !test_bit(IVTV_F_S_STREAMING, &s->s_flags)) {
  int rc;

  mutex_lock(&itv->serialize_lock);
  rc = ivtv_start_capture(id);
  mutex_unlock(&itv->serialize_lock);
  if (rc) {
   IVTV_DEBUG_INFO("Could not start capture for %s (%d)\n",
     s->name, rc);
   return POLLERR;
  }
  IVTV_DEBUG_FILE("Encoder poll started capture\n");
 }


 IVTV_DEBUG_HI_FILE("Encoder poll\n");
 poll_wait(filp, &s->waitq, wait);

 if (s->q_full.length || s->q_io.length)
  return POLLIN | POLLRDNORM;
 if (eof)
  return POLLHUP;
 return 0;
}
