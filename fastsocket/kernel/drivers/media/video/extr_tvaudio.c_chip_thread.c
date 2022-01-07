
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct CHIPSTATE {scalar_t__ mode; int prevmode; int wt; scalar_t__ radio; struct v4l2_subdev sd; struct CHIPDESC* desc; } ;
struct CHIPDESC {int (* getmode ) (struct CHIPSTATE*) ;int (* setmode ) (struct CHIPSTATE*,int) ;} ;


 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int V4L2_TUNER_MODE_LANG1 ;
 int V4L2_TUNER_MODE_LANG1_LANG2 ;
 int V4L2_TUNER_MODE_LANG2 ;
 int V4L2_TUNER_MODE_MONO ;
 int V4L2_TUNER_MODE_STEREO ;
 int debug ;
 scalar_t__ jiffies ;
 scalar_t__ kthread_should_stop () ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int schedule () ;
 int set_current_state (int ) ;
 int set_freezable () ;
 int stub1 (struct CHIPSTATE*) ;
 int stub2 (struct CHIPSTATE*,int) ;
 int stub3 (struct CHIPSTATE*,int) ;
 int stub4 (struct CHIPSTATE*,int) ;
 int stub5 (struct CHIPSTATE*,int) ;
 int stub6 (struct CHIPSTATE*,int) ;
 int try_to_freeze () ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*) ;

__attribute__((used)) static int chip_thread(void *data)
{
 struct CHIPSTATE *chip = data;
 struct CHIPDESC *desc = chip->desc;
 struct v4l2_subdev *sd = &chip->sd;
 int mode;

 v4l2_dbg(1, debug, sd, "thread started\n");
 set_freezable();
 for (;;) {
  set_current_state(TASK_INTERRUPTIBLE);
  if (!kthread_should_stop())
   schedule();
  set_current_state(TASK_RUNNING);
  try_to_freeze();
  if (kthread_should_stop())
   break;
  v4l2_dbg(1, debug, sd, "thread wakeup\n");


  if (chip->radio || chip->mode != 0)
   continue;


  mode = desc->getmode(chip);
  if (mode == chip->prevmode)
   continue;


  v4l2_dbg(1, debug, sd, "thread checkmode\n");

  chip->prevmode = mode;

  if (mode & V4L2_TUNER_MODE_STEREO)
   desc->setmode(chip, V4L2_TUNER_MODE_STEREO);
  if (mode & V4L2_TUNER_MODE_LANG1_LANG2)
   desc->setmode(chip, V4L2_TUNER_MODE_STEREO);
  else if (mode & V4L2_TUNER_MODE_LANG1)
   desc->setmode(chip, V4L2_TUNER_MODE_LANG1);
  else if (mode & V4L2_TUNER_MODE_LANG2)
   desc->setmode(chip, V4L2_TUNER_MODE_LANG2);
  else
   desc->setmode(chip, V4L2_TUNER_MODE_MONO);


  mod_timer(&chip->wt, jiffies+msecs_to_jiffies(2000));
 }

 v4l2_dbg(1, debug, sd, "thread exiting\n");
 return 0;
}
