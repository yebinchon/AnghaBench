
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx18_stream {scalar_t__ type; int waitq; int s_flags; int handle; struct cx18* cx; } ;
struct cx18 {int tot_capturing; int ana_capturing; } ;


 int CX18_CPU_CAPTURE_STOP ;
 int CX18_CPU_DE_RELEASE_MDL ;
 int CX18_DEBUG_INFO (char*) ;
 int CX18_DESTROY_TASK ;
 int CX18_DSP0_INTERRUPT_MASK ;
 scalar_t__ CX18_ENC_STREAM_TYPE_MPG ;
 scalar_t__ CX18_ENC_STREAM_TYPE_TS ;
 int CX18_F_S_STOPPING ;
 int CX18_F_S_STREAMING ;
 int CX18_INFO (char*) ;
 int CX18_INVALID_TASK_HANDLE ;
 int EINVAL ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int clear_bit (int ,int *) ;
 int cx18_stream_enabled (struct cx18_stream*) ;
 int cx18_vapi (struct cx18*,int ,int,int ,...) ;
 int cx18_write_reg (struct cx18*,int,int ) ;
 unsigned long jiffies ;
 int set_bit (int ,int *) ;
 int wake_up (int *) ;

int cx18_stop_v4l2_encode_stream(struct cx18_stream *s, int gop_end)
{
 struct cx18 *cx = s->cx;
 unsigned long then;

 if (!cx18_stream_enabled(s))
  return -EINVAL;




 CX18_DEBUG_INFO("Stop Capture\n");

 if (atomic_read(&cx->tot_capturing) == 0)
  return 0;

 set_bit(CX18_F_S_STOPPING, &s->s_flags);
 if (s->type == CX18_ENC_STREAM_TYPE_MPG)
  cx18_vapi(cx, CX18_CPU_CAPTURE_STOP, 2, s->handle, !gop_end);
 else
  cx18_vapi(cx, CX18_CPU_CAPTURE_STOP, 1, s->handle);

 then = jiffies;

 if (s->type == CX18_ENC_STREAM_TYPE_MPG && gop_end) {
  CX18_INFO("ignoring gop_end: not (yet?) supported by the firmware\n");
 }

 if (s->type != CX18_ENC_STREAM_TYPE_TS)
  atomic_dec(&cx->ana_capturing);
 atomic_dec(&cx->tot_capturing);


 clear_bit(CX18_F_S_STREAMING, &s->s_flags);


 cx18_vapi(cx, CX18_CPU_DE_RELEASE_MDL, 1, s->handle);

 cx18_vapi(cx, CX18_DESTROY_TASK, 1, s->handle);
 s->handle = CX18_INVALID_TASK_HANDLE;
 clear_bit(CX18_F_S_STOPPING, &s->s_flags);

 if (atomic_read(&cx->tot_capturing) > 0)
  return 0;

 cx18_write_reg(cx, 5, CX18_DSP0_INTERRUPT_MASK);
 wake_up(&s->waitq);

 return 0;
}
