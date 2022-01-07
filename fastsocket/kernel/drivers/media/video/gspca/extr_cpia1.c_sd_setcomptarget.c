
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int frTargeting; } ;
struct TYPE_4__ {TYPE_1__ compressionTarget; } ;
struct sd {TYPE_2__ params; } ;
struct gspca_dev {scalar_t__ streaming; } ;
typedef int __s32 ;


 int command_setcompressiontarget (struct gspca_dev*) ;

__attribute__((used)) static int sd_setcomptarget(struct gspca_dev *gspca_dev, __s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;

 sd->params.compressionTarget.frTargeting = val;
 if (gspca_dev->streaming)
  return command_setcompressiontarget(gspca_dev);

 return 0;
}
