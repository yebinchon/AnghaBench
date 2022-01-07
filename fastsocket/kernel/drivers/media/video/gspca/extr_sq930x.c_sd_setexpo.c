
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int do_ctrl; int expo; } ;
struct gspca_dev {scalar_t__ streaming; } ;
typedef int __s32 ;



__attribute__((used)) static int sd_setexpo(struct gspca_dev *gspca_dev, __s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;

 sd->expo = val;
 if (gspca_dev->streaming)
  sd->do_ctrl = 1;
 return 0;
}
