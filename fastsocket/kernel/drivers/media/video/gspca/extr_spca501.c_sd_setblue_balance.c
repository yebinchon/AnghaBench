
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int blue_balance; } ;
struct gspca_dev {scalar_t__ streaming; } ;
typedef int __s32 ;


 int setblue_balance (struct gspca_dev*) ;

__attribute__((used)) static int sd_setblue_balance(struct gspca_dev *gspca_dev, __s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;

 sd->blue_balance = val;
 if (gspca_dev->streaming)
  setblue_balance(gspca_dev);
 return 0;
}
