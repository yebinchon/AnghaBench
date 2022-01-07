
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int blue_balance; } ;
struct gspca_dev {int dev; } ;


 int SPCA501_REG_CCDSP ;
 int reg_write (int ,int ,int,int ) ;

__attribute__((used)) static void setblue_balance(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 reg_write(gspca_dev->dev, SPCA501_REG_CCDSP, 0x11, sd->blue_balance);
}
