
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t baserate; size_t divisor; } ;
struct TYPE_4__ {int coarseJump; } ;
struct TYPE_6__ {TYPE_2__ sensorFps; TYPE_1__ flickerControl; } ;
struct sd {int mainsFreq; int freq; TYPE_3__ params; } ;
struct gspca_dev {int streaming; } ;
typedef int __s32 ;


 int EINVAL ;
 int *** flicker_jumps ;
 int set_flicker (struct gspca_dev*,int,int ) ;

__attribute__((used)) static int sd_setfreq(struct gspca_dev *gspca_dev, __s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int on;

 switch (val) {
 case 0:
  on = 0;
  break;
 case 1:
  on = 1;
  sd->mainsFreq = 0;
  break;
 case 2:
  on = 1;
  sd->mainsFreq = 1;
  break;
 default:
  return -EINVAL;
 }

 sd->freq = val;
 sd->params.flickerControl.coarseJump =
  flicker_jumps[sd->mainsFreq]
        [sd->params.sensorFps.baserate]
        [sd->params.sensorFps.divisor];

 return set_flicker(gspca_dev, on, gspca_dev->streaming);
}
