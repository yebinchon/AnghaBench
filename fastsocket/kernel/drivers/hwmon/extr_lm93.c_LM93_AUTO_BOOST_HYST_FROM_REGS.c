
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lm93_data {int* boost_hyst; int * boost; } ;


 int LM93_TEMP_FROM_REG (int ) ;
 int LM93_TEMP_OFFSET_FROM_REG (int,int) ;

__attribute__((used)) static int LM93_AUTO_BOOST_HYST_FROM_REGS(struct lm93_data *data, int nr,
  int mode)
{
 u8 reg;

 switch (nr) {
 case 0:
  reg = data->boost_hyst[0] & 0x0f;
  break;
 case 1:
  reg = data->boost_hyst[0] >> 4 & 0x0f;
  break;
 case 2:
  reg = data->boost_hyst[1] & 0x0f;
  break;
 case 3:
 default:
  reg = data->boost_hyst[1] >> 4 & 0x0f;
  break;
 }

 return LM93_TEMP_FROM_REG(data->boost[nr]) -
   LM93_TEMP_OFFSET_FROM_REG(reg, mode);
}
