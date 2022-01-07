
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int * cx_jpeg_init ;
 int reg_r (struct gspca_dev*,int,int) ;
 int reg_w (struct gspca_dev*,int,int ,int) ;
 int reg_w_val (struct gspca_dev*,int,int) ;

__attribute__((used)) static void cx11646_jpegInit(struct gspca_dev*gspca_dev)
{
 int i;
 int length;

 reg_w_val(gspca_dev, 0x00c0, 0x01);
 reg_w_val(gspca_dev, 0x00c3, 0x00);
 reg_w_val(gspca_dev, 0x00c0, 0x00);
 reg_r(gspca_dev, 0x0001, 1);
 length = 8;
 for (i = 0; i < 79; i++) {
  if (i == 78)
   length = 6;
  reg_w(gspca_dev, 0x0008, cx_jpeg_init[i], length);
 }
 reg_r(gspca_dev, 0x0002, 1);
 reg_w_val(gspca_dev, 0x0055, 0x14);
}
