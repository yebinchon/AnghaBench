
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct six_axis_t {int fx; int fy; int fz; int mx; int my; int mz; } ;
struct TYPE_2__ {int mz; int my; int mx; int fz; int fy; int fx; } ;
struct jr3_channel {int command_word0; TYPE_1__ full_scale; } ;


 int printk (char*,int,int,int,int,int,int) ;
 int set_s16 (int *,int) ;

__attribute__((used)) static void set_full_scales(volatile struct jr3_channel *channel,
       struct six_axis_t full_scale)
{
 printk("%d %d %d %d %d %d\n",
        full_scale.fx,
        full_scale.fy,
        full_scale.fz, full_scale.mx, full_scale.my, full_scale.mz);
 set_s16(&channel->full_scale.fx, full_scale.fx);
 set_s16(&channel->full_scale.fy, full_scale.fy);
 set_s16(&channel->full_scale.fz, full_scale.fz);
 set_s16(&channel->full_scale.mx, full_scale.mx);
 set_s16(&channel->full_scale.my, full_scale.my);
 set_s16(&channel->full_scale.mz, full_scale.mz);
 set_s16(&channel->command_word0, 0x0a00);
}
