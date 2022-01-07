
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int av_hw_conf; } ;


 TYPE_1__* ps3av ;
 int ps3av_auto_videomode (int *) ;

int ps3av_get_auto_mode(void)
{
 return ps3av_auto_videomode(&ps3av->av_hw_conf);
}
