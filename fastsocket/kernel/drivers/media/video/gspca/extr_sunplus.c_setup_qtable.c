
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int dummy; } ;


 int reg_w_riv (struct gspca_dev*,int,int,int const) ;

__attribute__((used)) static void setup_qtable(struct gspca_dev *gspca_dev,
   const u8 qtable[2][64])
{
 int i;


 for (i = 0; i < 64; i++)
  reg_w_riv(gspca_dev, 0x00, 0x2800 + i, qtable[0][i]);


 for (i = 0; i < 64; i++)
  reg_w_riv(gspca_dev, 0x00, 0x2840 + i, qtable[1][i]);
}
