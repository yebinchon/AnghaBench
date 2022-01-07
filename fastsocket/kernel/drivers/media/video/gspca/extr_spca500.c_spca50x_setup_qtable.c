
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;
typedef int __u8 ;


 int reg_w (struct gspca_dev*,unsigned int,unsigned int,int const) ;

__attribute__((used)) static int spca50x_setup_qtable(struct gspca_dev *gspca_dev,
    unsigned int request,
    unsigned int ybase,
    unsigned int cbase,
    const __u8 qtable[2][64])
{
 int i, err;


 for (i = 0; i < 64; i++) {
  err = reg_w(gspca_dev, request, ybase + i, qtable[0][i]);
  if (err < 0)
   return err;
 }


 for (i = 0; i < 64; i++) {
  err = reg_w(gspca_dev, request, cbase + i, qtable[1][i]);
  if (err < 0)
   return err;
 }
 return 0;
}
