
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int dummy; } ;


 int D_USBO ;
 int OV534_OP_WRITE_3 ;
 int OV534_REG_OPERATION ;
 int OV534_REG_SUBADDR ;
 int OV534_REG_WRITE ;
 int PDEBUG (int ,char*,int ,int ) ;
 int err (char*) ;
 int reg_w_i (struct gspca_dev*,int ,int ) ;
 int sccb_check_status (struct gspca_dev*) ;

__attribute__((used)) static void sccb_write(struct gspca_dev *gspca_dev, u8 reg, u8 val)
{
 PDEBUG(D_USBO, "sccb_write [%02x] = %02x", reg, val);
 reg_w_i(gspca_dev, OV534_REG_SUBADDR, reg);
 reg_w_i(gspca_dev, OV534_REG_WRITE, val);
 reg_w_i(gspca_dev, OV534_REG_OPERATION, OV534_OP_WRITE_3);

 if (!sccb_check_status(gspca_dev))
  err("sccb_write failed");
}
