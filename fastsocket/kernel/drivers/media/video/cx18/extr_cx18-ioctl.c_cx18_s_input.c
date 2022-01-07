
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct file {int dummy; } ;
struct cx18_open_id {int prio; struct cx18* cx; } ;
struct cx18 {unsigned int nof_inputs; unsigned int active_input; TYPE_2__* card; int audio_input; int prio; } ;
struct TYPE_4__ {TYPE_1__* video_inputs; } ;
struct TYPE_3__ {int audio_index; } ;


 int CX18_DEBUG_INFO (char*,...) ;
 int EINVAL ;
 int cx18_audio_set_io (struct cx18*) ;
 int cx18_mute (struct cx18*) ;
 int cx18_unmute (struct cx18*) ;
 int cx18_video_set_io (struct cx18*) ;
 int v4l2_prio_check (int *,int ) ;

int cx18_s_input(struct file *file, void *fh, unsigned int inp)
{
 struct cx18_open_id *id = fh;
 struct cx18 *cx = id->cx;
 int ret;

 ret = v4l2_prio_check(&cx->prio, id->prio);
 if (ret)
  return ret;

 if (inp >= cx->nof_inputs)
  return -EINVAL;

 if (inp == cx->active_input) {
  CX18_DEBUG_INFO("Input unchanged\n");
  return 0;
 }

 CX18_DEBUG_INFO("Changing input from %d to %d\n",
   cx->active_input, inp);

 cx->active_input = inp;

 cx->audio_input = cx->card->video_inputs[inp].audio_index;



 cx18_mute(cx);
 cx18_video_set_io(cx);
 cx18_audio_set_io(cx);
 cx18_unmute(cx);
 return 0;
}
