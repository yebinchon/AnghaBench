
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_int_device {struct tcm825x_sensor* priv; } ;
struct TYPE_5__ {int clock_curr; } ;
struct TYPE_6__ {TYPE_2__ bt656; } ;
struct v4l2_ifparm {TYPE_3__ u; } ;
struct v4l2_fract {int denominator; int numerator; } ;
struct tcm825x_sensor {TYPE_1__* platform_data; struct v4l2_fract timeperframe; } ;
struct TYPE_4__ {int (* ifparm ) (struct v4l2_ifparm*) ;} ;


 int HIGH_FPS_MODE_LOWER_LIMIT ;
 int MAX_FPS ;
 int MAX_HALF_FPS ;
 scalar_t__ TCM825X_XCLK_MAX ;
 scalar_t__ TCM825X_XCLK_MIN ;
 int max (int,int) ;
 int min (int,int) ;
 int stub1 (struct v4l2_ifparm*) ;

__attribute__((used)) static int ioctl_g_ifparm(struct v4l2_int_device *s, struct v4l2_ifparm *p)
{
 struct tcm825x_sensor *sensor = s->priv;
 struct v4l2_fract *timeperframe = &sensor->timeperframe;
 u32 tgt_xclk;
 u32 tgt_fps;
 int rval;

 rval = sensor->platform_data->ifparm(p);
 if (rval)
  return rval;

 tgt_fps = timeperframe->denominator / timeperframe->numerator;

 tgt_xclk = (tgt_fps <= HIGH_FPS_MODE_LOWER_LIMIT) ?
  (2457 * tgt_fps) / MAX_HALF_FPS :
  (2457 * tgt_fps) / MAX_FPS;
 tgt_xclk *= 10000;

 tgt_xclk = min(tgt_xclk, (u32)TCM825X_XCLK_MAX);
 tgt_xclk = max(tgt_xclk, (u32)TCM825X_XCLK_MIN);

 p->u.bt656.clock_curr = tgt_xclk;

 return 0;
}
