
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;


 int saa717x_write (struct v4l2_subdev*,int,int) ;

__attribute__((used)) static void set_v_scale(struct v4l2_subdev *sd, int task, int yscale)
{
 int task_shift;

 task_shift = task * 0x40;

 saa717x_write(sd, 0x70 + task_shift, yscale & 0xff);

 saa717x_write(sd, 0x71 + task_shift, yscale >> 8);
}
