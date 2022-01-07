
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sd {int dummy; } ;


 int reg_r (struct sd*,int ) ;
 int reg_w (struct sd*,int ,int) ;

__attribute__((used)) static void reg_w_mask(struct sd *sd,
   u16 index,
   u8 value,
   u8 mask)
{
 int ret;
 u8 oldval;

 if (mask != 0xff) {
  value &= mask;
  ret = reg_r(sd, index);
  if (ret < 0)
   return;

  oldval = ret & ~mask;
  value |= oldval;
 }
 reg_w(sd, index, value);
}
