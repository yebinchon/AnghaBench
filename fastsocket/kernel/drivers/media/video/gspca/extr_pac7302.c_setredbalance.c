
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int red_balance; } ;
struct gspca_dev {int dummy; } ;


 int D_CONF ;
 int D_STREAM ;
 int PDEBUG (int,char*,int) ;
 int reg_w (struct gspca_dev*,int,int) ;

__attribute__((used)) static void setredbalance(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 reg_w(gspca_dev, 0xff, 0x00);
 reg_w(gspca_dev, 0xc5, sd->red_balance);

 reg_w(gspca_dev, 0xdc, 0x01);
 PDEBUG(D_CONF|D_STREAM, "red_balance: %i", sd->red_balance);
}
