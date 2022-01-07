
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_buffer {int done; int ts; int field_count; int state; } ;
struct front_face {struct videobuf_buffer* curr_frame; } ;


 int VIDEOBUF_DONE ;
 int do_gettimeofday (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void submit_frame(struct front_face *front)
{
 struct videobuf_buffer *vb = front->curr_frame;

 if (vb == ((void*)0))
  return;

 front->curr_frame = ((void*)0);
 vb->state = VIDEOBUF_DONE;
 vb->field_count++;
 do_gettimeofday(&vb->ts);

 wake_up(&vb->done);
}
