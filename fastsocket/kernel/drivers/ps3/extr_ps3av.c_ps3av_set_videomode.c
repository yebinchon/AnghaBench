
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; int wq; } ;


 int PS3AV_CMD_MUTE_ON ;
 TYPE_1__* ps3av ;
 int ps3av_set_av_video_mute (int ) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static int ps3av_set_videomode(void)
{

 ps3av_set_av_video_mute(PS3AV_CMD_MUTE_ON);


 queue_work(ps3av->wq, &ps3av->work);

 return 0;
}
