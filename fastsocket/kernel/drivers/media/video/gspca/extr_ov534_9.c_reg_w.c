
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct gspca_dev {int dummy; } ;


 int D_USBO ;
 int PDEBUG (int ,char*,int ,int ) ;
 int reg_w_i (struct gspca_dev*,int ,int ) ;

__attribute__((used)) static void reg_w(struct gspca_dev *gspca_dev, u16 reg, u8 val)
{
 PDEBUG(D_USBO, "reg_w [%04x] = %02x", reg, val);
 reg_w_i(gspca_dev, reg, val);
}
