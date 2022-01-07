
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gspca_dev {int dummy; } ;


 int cit_send_x_00_05 (struct gspca_dev*,int ) ;
 int cit_send_x_00_05_02 (struct gspca_dev*,int ) ;
 int cit_send_x_01_00_05 (struct gspca_dev*,int) ;

__attribute__((used)) static void cit_PacketFormat2(struct gspca_dev *gspca_dev, u16 fkey, u16 val)
{
 cit_send_x_01_00_05(gspca_dev, 0x0088);
 cit_send_x_00_05(gspca_dev, fkey);
 cit_send_x_00_05_02(gspca_dev, val);
}
