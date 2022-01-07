
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct TYPE_2__ {int done; int ps3av_mode_old; int ps3av_mode; } ;


 int complete (int *) ;
 TYPE_1__* ps3av ;
 int ps3av_set_videomode_cont (int ,int ) ;

__attribute__((used)) static void ps3avd(struct work_struct *work)
{
 ps3av_set_videomode_cont(ps3av->ps3av_mode, ps3av->ps3av_mode_old);
 complete(&ps3av->done);
}
