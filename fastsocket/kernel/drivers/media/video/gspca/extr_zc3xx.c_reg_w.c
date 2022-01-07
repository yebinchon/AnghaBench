
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

__attribute__((used)) static void reg_w(struct gspca_dev *gspca_dev,
   u8 value,
   u16 index)
{
 PDEBUG(D_USBO, "reg w [%04x] = %02x", index, value);
 reg_w_i(gspca_dev, value, index);
}
