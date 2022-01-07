
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct six_axis_t {void* mz; void* my; void* mx; void* fz; void* fy; void* fx; } ;
struct TYPE_2__ {int mz; int my; int mx; int fz; int fy; int fx; } ;
struct jr3_channel {TYPE_1__ max_full_scale; } ;


 void* get_s16 (int *) ;

__attribute__((used)) static struct six_axis_t get_max_full_scales(volatile struct jr3_channel
          *channel)
{
 struct six_axis_t result;
 result.fx = get_s16(&channel->max_full_scale.fx);
 result.fy = get_s16(&channel->max_full_scale.fy);
 result.fz = get_s16(&channel->max_full_scale.fz);
 result.mx = get_s16(&channel->max_full_scale.mx);
 result.my = get_s16(&channel->max_full_scale.my);
 result.mz = get_s16(&channel->max_full_scale.mz);
 return result;
}
