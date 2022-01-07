
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int cit_write_reg (struct gspca_dev*,int,int) ;

__attribute__((used)) static void cit_model2_Packet2(struct gspca_dev *gspca_dev)
{
 cit_write_reg(gspca_dev, 0x00ff, 0x012d);
 cit_write_reg(gspca_dev, 0xfea3, 0x0124);
}
