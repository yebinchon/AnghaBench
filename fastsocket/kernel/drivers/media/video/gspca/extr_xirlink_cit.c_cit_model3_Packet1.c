
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gspca_dev {int dummy; } ;


 int cit_write_reg (struct gspca_dev*,int,int) ;

__attribute__((used)) static void cit_model3_Packet1(struct gspca_dev *gspca_dev, u16 v1, u16 v2)
{
 cit_write_reg(gspca_dev, 0x0078, 0x012d);
 cit_write_reg(gspca_dev, v1, 0x012f);
 cit_write_reg(gspca_dev, 0xd141, 0x0124);
 cit_write_reg(gspca_dev, v2, 0x0127);
 cit_write_reg(gspca_dev, 0xfea8, 0x0124);
}
