
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int cit_send_x_00 (struct gspca_dev*,unsigned short) ;
 int cit_write_reg (struct gspca_dev*,int,int) ;

__attribute__((used)) static void cit_send_x_00_05(struct gspca_dev *gspca_dev, unsigned short x)
{
 cit_send_x_00(gspca_dev, x);
 cit_write_reg(gspca_dev, 0x0005, 0x0124);
}
