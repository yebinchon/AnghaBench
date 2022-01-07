
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int ctrlreg_value; int * port_array; scalar_t__ lcr_base; int misc_ctrl_value; } ;
typedef TYPE_1__ SLMP_INFO ;


 int BIT3 ;
 int BIT30 ;
 int BIT4 ;
 int BIT5 ;
 int lcr1_brdr_value ;
 int misc_ctrl_value ;
 int read_ahead_count ;
 int sca_init (int ) ;
 int write_control_reg (TYPE_1__*) ;

__attribute__((used)) static bool init_adapter(SLMP_INFO *info)
{
 int i;


 volatile u32 *MiscCtrl = (u32 *)(info->lcr_base + 0x50);
 u32 readval;

 info->misc_ctrl_value |= BIT30;
 *MiscCtrl = info->misc_ctrl_value;






 for(i=0;i<10;i++)
  readval = *MiscCtrl;

 info->misc_ctrl_value &= ~BIT30;
 *MiscCtrl = info->misc_ctrl_value;


 info->ctrlreg_value = 0xaa;
 write_control_reg(info);

 {
  volatile u32 *LCR1BRDR = (u32 *)(info->lcr_base + 0x2c);
  lcr1_brdr_value &= ~(BIT5 + BIT4 + BIT3);

  switch(read_ahead_count)
  {
  case 16:
   lcr1_brdr_value |= BIT5 + BIT4 + BIT3;
   break;
  case 8:
   lcr1_brdr_value |= BIT5 + BIT4;
   break;
  case 4:
   lcr1_brdr_value |= BIT5 + BIT3;
   break;
  case 0:
   lcr1_brdr_value |= BIT5;
   break;
  }

  *LCR1BRDR = lcr1_brdr_value;
  *MiscCtrl = misc_ctrl_value;
 }

 sca_init(info->port_array[0]);
 sca_init(info->port_array[2]);

 return 1;
}
