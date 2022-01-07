
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct cx18_open_id* private_data; } ;
struct cx18_stream {scalar_t__ type; int name; struct cx18* cx; } ;
struct cx18_open_id {scalar_t__ type; scalar_t__ open_id; int prio; struct cx18* cx; } ;
struct cx18 {int i_flags; int ana_capturing; int open_id; int prio; } ;


 int CX18_DEBUG_FILE (char*,int ) ;
 int CX18_DEBUG_WARN (char*) ;
 scalar_t__ CX18_ENC_STREAM_TYPE_RAD ;
 int CX18_F_I_RADIO_USER ;
 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ atomic_read (int *) ;
 int cx18_audio_set_io (struct cx18*) ;
 int cx18_call_all (struct cx18*,int ,int ) ;
 scalar_t__ cx18_claim_stream (struct cx18_open_id*,scalar_t__) ;
 int cx18_mute (struct cx18*) ;
 int cx18_release_stream (struct cx18_stream*) ;
 int cx18_unmute (struct cx18*) ;
 int kfree (struct cx18_open_id*) ;
 struct cx18_open_id* kmalloc (int,int ) ;
 int s_radio ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int tuner ;
 int v4l2_prio_open (int *,int *) ;

__attribute__((used)) static int cx18_serialized_open(struct cx18_stream *s, struct file *filp)
{
 struct cx18 *cx = s->cx;
 struct cx18_open_id *item;

 CX18_DEBUG_FILE("open %s\n", s->name);


 item = kmalloc(sizeof(struct cx18_open_id), GFP_KERNEL);
 if (((void*)0) == item) {
  CX18_DEBUG_WARN("nomem on v4l2 open\n");
  return -ENOMEM;
 }
 item->cx = cx;
 item->type = s->type;
 v4l2_prio_open(&cx->prio, &item->prio);

 item->open_id = cx->open_id++;
 filp->private_data = item;

 if (item->type == CX18_ENC_STREAM_TYPE_RAD) {

  if (cx18_claim_stream(item, item->type)) {

   kfree(item);
   return -EBUSY;
  }

  if (!test_bit(CX18_F_I_RADIO_USER, &cx->i_flags)) {
   if (atomic_read(&cx->ana_capturing) > 0) {


    cx18_release_stream(s);
    kfree(item);
    return -EBUSY;
   }
  }


  set_bit(CX18_F_I_RADIO_USER, &cx->i_flags);

  cx18_mute(cx);

  cx18_call_all(cx, tuner, s_radio);

  cx18_audio_set_io(cx);

  cx18_unmute(cx);
 }
 return 0;
}
