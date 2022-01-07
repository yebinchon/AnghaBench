
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct gspca_dev {int dummy; } ;


 int D_USBI ;
 int PDEBUG (int ,char*,int ,int ) ;
 int reg_r_i (struct gspca_dev*,int ) ;

__attribute__((used)) static u8 reg_r(struct gspca_dev *gspca_dev,
  u16 index)
{
 u8 ret;

 ret = reg_r_i(gspca_dev, index);
 PDEBUG(D_USBI, "reg r [%04x] -> %02x", index, ret);
 return ret;
}
