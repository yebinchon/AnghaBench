
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;


 int EBUSY ;
 int EIO ;
 int SAA7191_STATUS_FIDT ;
 int SAA7191_STATUS_HLCK ;
 int V4L2_STD_NTSC ;
 int V4L2_STD_PAL ;
 int dprintk (char*) ;
 scalar_t__ saa7191_read_status (struct v4l2_subdev*,int*) ;
 int saa7191_s_std (struct v4l2_subdev*,int ) ;

__attribute__((used)) static int saa7191_autodetect_norm(struct v4l2_subdev *sd)
{
 u8 status;

 dprintk("SAA7191 signal auto-detection...\n");

 dprintk("Reading status...\n");

 if (saa7191_read_status(sd, &status))
  return -EIO;

 dprintk("Checking for signal...\n");


 if (status & SAA7191_STATUS_HLCK) {
  dprintk("No signal\n");
  return -EBUSY;
 }

 dprintk("Signal found\n");

 if (status & SAA7191_STATUS_FIDT) {

  dprintk("NTSC\n");
  return saa7191_s_std(sd, V4L2_STD_NTSC);
 } else {

  dprintk("PAL\n");
  return saa7191_s_std(sd, V4L2_STD_PAL);
 }
}
