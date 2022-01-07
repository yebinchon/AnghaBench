
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;


 int adv7175_write (struct v4l2_subdev*,int,int) ;

__attribute__((used)) static void set_subcarrier_freq(struct v4l2_subdev *sd, int pass_through)
{


 if (pass_through)
  adv7175_write(sd, 0x02, 0x00);
 else
  adv7175_write(sd, 0x02, 0x55);

 adv7175_write(sd, 0x03, 0x55);
 adv7175_write(sd, 0x04, 0x55);
 adv7175_write(sd, 0x05, 0x25);
}
