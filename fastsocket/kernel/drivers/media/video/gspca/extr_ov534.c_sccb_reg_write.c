
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int usb_err; } ;


 int D_USBO ;
 int EIO ;
 int OV534_OP_WRITE_3 ;
 int OV534_REG_OPERATION ;
 int OV534_REG_SUBADDR ;
 int OV534_REG_WRITE ;
 int PDEBUG (int ,char*,int ,int ) ;
 int err (char*) ;
 int ov534_reg_write (struct gspca_dev*,int ,int ) ;
 int sccb_check_status (struct gspca_dev*) ;

__attribute__((used)) static void sccb_reg_write(struct gspca_dev *gspca_dev, u8 reg, u8 val)
{
 PDEBUG(D_USBO, "sccb write: %02x %02x", reg, val);
 ov534_reg_write(gspca_dev, OV534_REG_SUBADDR, reg);
 ov534_reg_write(gspca_dev, OV534_REG_WRITE, val);
 ov534_reg_write(gspca_dev, OV534_REG_OPERATION, OV534_OP_WRITE_3);

 if (!sccb_check_status(gspca_dev)) {
  err("sccb_reg_write failed");
  gspca_dev->usb_err = -EIO;
 }
}
