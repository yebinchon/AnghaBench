
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int * usb_buf; } ;


 int D_STREAM ;
 int PDEBUG (int ,char*,int ,int ,int ,int ,int ) ;
 int reg_r (struct gspca_dev*,int,int,int) ;

__attribute__((used)) static void spca50x_GetFirmware(struct gspca_dev *gspca_dev)
{
 u8 *data;

 data = gspca_dev->usb_buf;
 reg_r(gspca_dev, 0x20, 0, 5);
 PDEBUG(D_STREAM, "FirmWare : %d %d %d %d %d ",
  data[0], data[1], data[2], data[3], data[4]);
 reg_r(gspca_dev, 0x23, 0, 64);
 reg_r(gspca_dev, 0x23, 1, 64);
}
