
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mdiobb_ctrl {int dummy; } ;


 int mdiobb_get_bit (struct mdiobb_ctrl*) ;

__attribute__((used)) static u16 mdiobb_get_num(struct mdiobb_ctrl *ctrl, int bits)
{
 int i;
 u16 ret = 0;

 for (i = bits - 1; i >= 0; i--) {
  ret <<= 1;
  ret |= mdiobb_get_bit(ctrl);
 }

 return ret;
}
