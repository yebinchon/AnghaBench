
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct gspca_dev {int dummy; } ;


 int OV534_OP_READ_2 ;
 int OV534_OP_WRITE_2 ;
 int OV534_REG_OPERATION ;
 int OV534_REG_READ ;
 int OV534_REG_SUBADDR ;
 int err (char*) ;
 int reg_r (struct gspca_dev*,int ) ;
 int reg_w (struct gspca_dev*,int ,int ) ;
 int sccb_check_status (struct gspca_dev*) ;

__attribute__((used)) static u8 sccb_read(struct gspca_dev *gspca_dev, u16 reg)
{
 reg_w(gspca_dev, OV534_REG_SUBADDR, reg);
 reg_w(gspca_dev, OV534_REG_OPERATION, OV534_OP_WRITE_2);
 if (!sccb_check_status(gspca_dev))
  err("sccb_read failed 1");

 reg_w(gspca_dev, OV534_REG_OPERATION, OV534_OP_READ_2);
 if (!sccb_check_status(gspca_dev))
  err("sccb_read failed 2");

 return reg_r(gspca_dev, OV534_REG_READ);
}
