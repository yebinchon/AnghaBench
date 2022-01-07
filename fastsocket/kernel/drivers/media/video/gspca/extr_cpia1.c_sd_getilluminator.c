
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int toplight; int bottomlight; int qx3_detected; } ;
struct TYPE_4__ {TYPE_1__ qx3; } ;
struct sd {TYPE_2__ params; } ;
struct gspca_dev {int dummy; } ;
typedef int __s32 ;


 int EINVAL ;

__attribute__((used)) static int sd_getilluminator(struct gspca_dev *gspca_dev, __s32 *val, int n)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (!sd->params.qx3.qx3_detected)
  return -EINVAL;

 switch (n) {
 case 1:
  *val = sd->params.qx3.bottomlight;
  break;
 case 2:
  *val = sd->params.qx3.toplight;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
