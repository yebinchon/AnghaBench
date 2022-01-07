
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;


 int EBUSY ;
 int EIO ;
 int SAA7191_STATUS_HLCK ;
 int SAA7191_SYNC_COUNT ;
 int SAA7191_SYNC_DELAY ;
 int dprintk (char*) ;
 int msleep (int ) ;
 scalar_t__ saa7191_read_status (struct v4l2_subdev*,int*) ;

__attribute__((used)) static int saa7191_wait_for_signal(struct v4l2_subdev *sd, u8 *status)
{
 int i = 0;

 dprintk("Checking for signal...\n");

 for (i = 0; i < SAA7191_SYNC_COUNT; i++) {
  if (saa7191_read_status(sd, status))
   return -EIO;

  if (((*status) & SAA7191_STATUS_HLCK) == 0) {
   dprintk("Signal found\n");
   return 0;
  }

  msleep(SAA7191_SYNC_DELAY);
 }

 dprintk("No signal\n");

 return -EBUSY;
}
