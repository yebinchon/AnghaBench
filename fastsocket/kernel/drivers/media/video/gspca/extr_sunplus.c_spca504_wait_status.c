
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int msleep (int) ;
 scalar_t__ reg_r_12 (struct gspca_dev*,int,int,int) ;

__attribute__((used)) static void spca504_wait_status(struct gspca_dev *gspca_dev)
{
 int cnt;

 cnt = 256;
 while (--cnt > 0) {

  if (reg_r_12(gspca_dev, 0x06, 0x00, 1) == 0)
   return;
  msleep(10);
 }
}
