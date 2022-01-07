
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {int dummy; } ;


 int DRV_STATE_START ;
 int DRV_STATE_SUSPEND ;
 int DRV_STATE_UNLOAD ;
 int ENABLE_ASF ;
 int NIC_SRAM_FW_DRV_STATE_MBOX ;



 scalar_t__ tg3_flag (struct tg3*,int ) ;
 int tg3_write_mem (struct tg3*,int ,int ) ;

__attribute__((used)) static void tg3_write_sig_legacy(struct tg3 *tp, int kind)
{
 if (tg3_flag(tp, ENABLE_ASF)) {
  switch (kind) {
  case 130:
   tg3_write_mem(tp, NIC_SRAM_FW_DRV_STATE_MBOX,
          DRV_STATE_START);
   break;

  case 129:
   tg3_write_mem(tp, NIC_SRAM_FW_DRV_STATE_MBOX,
          DRV_STATE_UNLOAD);
   break;

  case 128:
   tg3_write_mem(tp, NIC_SRAM_FW_DRV_STATE_MBOX,
          DRV_STATE_SUSPEND);
   break;

  default:
   break;
  }
 }
}
