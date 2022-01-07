
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int auto_exposure; } ;
struct gspca_dev {int dummy; } ;
typedef int s32 ;



__attribute__((used)) static int sd_setautoexposure(struct gspca_dev *gspca_dev, s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;
 sd->auto_exposure = val;
 return 0;
}
