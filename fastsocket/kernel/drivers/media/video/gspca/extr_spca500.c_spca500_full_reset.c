
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int D_ERR ;
 int PDEBUG (int ,char*) ;
 int reg_r_wait (struct gspca_dev*,int,int,int) ;
 int reg_w (struct gspca_dev*,int,int,int) ;

__attribute__((used)) static int spca500_full_reset(struct gspca_dev *gspca_dev)
{
 int err;


 err = reg_w(gspca_dev, 0xe0, 0x0001, 0x0000);
 if (err < 0)
  return err;


 err = reg_r_wait(gspca_dev, 0x06, 0x0000, 0x0000);
 if (err < 0)
  return err;
 err = reg_w(gspca_dev, 0xe0, 0x0000, 0x0000);
 if (err < 0)
  return err;
 err = reg_r_wait(gspca_dev, 0x06, 0, 0);
 if (err < 0) {
  PDEBUG(D_ERR, "reg_r_wait() failed");
  return err;
 }

 return 0;
}
