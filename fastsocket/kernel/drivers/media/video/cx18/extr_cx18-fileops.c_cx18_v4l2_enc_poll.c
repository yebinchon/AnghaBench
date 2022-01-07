
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {struct cx18_open_id* private_data; } ;
struct TYPE_2__ {int depth; } ;
struct cx18_stream {TYPE_1__ q_full; int waitq; int name; int s_flags; } ;
struct cx18_open_id {size_t type; struct cx18* cx; } ;
struct cx18 {int serialize_lock; struct cx18_stream* streams; } ;
typedef int poll_table ;


 int CX18_DEBUG_FILE (char*) ;
 int CX18_DEBUG_HI_FILE (char*) ;
 int CX18_DEBUG_INFO (char*,int ,int) ;
 int CX18_F_S_STREAMING ;
 int CX18_F_S_STREAMOFF ;
 unsigned int POLLERR ;
 unsigned int POLLHUP ;
 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 scalar_t__ atomic_read (int *) ;
 int cx18_start_capture (struct cx18_open_id*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int poll_wait (struct file*,int *,int *) ;
 int test_bit (int ,int *) ;

unsigned int cx18_v4l2_enc_poll(struct file *filp, poll_table *wait)
{
 struct cx18_open_id *id = filp->private_data;
 struct cx18 *cx = id->cx;
 struct cx18_stream *s = &cx->streams[id->type];
 int eof = test_bit(CX18_F_S_STREAMOFF, &s->s_flags);


 if (!eof && !test_bit(CX18_F_S_STREAMING, &s->s_flags)) {
  int rc;

  mutex_lock(&cx->serialize_lock);
  rc = cx18_start_capture(id);
  mutex_unlock(&cx->serialize_lock);
  if (rc) {
   CX18_DEBUG_INFO("Could not start capture for %s (%d)\n",
     s->name, rc);
   return POLLERR;
  }
  CX18_DEBUG_FILE("Encoder poll started capture\n");
 }


 CX18_DEBUG_HI_FILE("Encoder poll\n");
 poll_wait(filp, &s->waitq, wait);

 if (atomic_read(&s->q_full.depth))
  return POLLIN | POLLRDNORM;
 if (eof)
  return POLLHUP;
 return 0;
}
