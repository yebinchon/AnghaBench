
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mdiobb_ctrl {int dummy; } ;


 int mdiobb_send_bit (struct mdiobb_ctrl*,int) ;

__attribute__((used)) static void mdiobb_send_num(struct mdiobb_ctrl *ctrl, u16 val, int bits)
{
 int i;

 for (i = bits - 1; i >= 0; i--)
  mdiobb_send_bit(ctrl, (val >> i) & 1);
}
