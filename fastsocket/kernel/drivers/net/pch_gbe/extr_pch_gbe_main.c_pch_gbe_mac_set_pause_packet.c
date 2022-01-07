
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long* addr; } ;
struct pch_gbe_hw {TYPE_2__* reg; TYPE_1__ mac; } ;
struct TYPE_4__ {int PAUSE_PKT5; int PAUSE_PKT4; int PAUSE_PKT3; int PAUSE_PKT2; int PAUSE_PKT1; int PAUSE_REQ; } ;


 unsigned long PCH_GBE_PAUSE_PKT1_VALUE ;
 unsigned long PCH_GBE_PAUSE_PKT2_VALUE ;
 unsigned long PCH_GBE_PAUSE_PKT4_VALUE ;
 unsigned long PCH_GBE_PAUSE_PKT5_VALUE ;
 unsigned long PCH_GBE_PS_PKT_RQ ;
 int ioread32 (int *) ;
 int iowrite32 (unsigned long,int *) ;
 int pr_debug (char*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void pch_gbe_mac_set_pause_packet(struct pch_gbe_hw *hw)
{
 unsigned long tmp2, tmp3;


 tmp2 = hw->mac.addr[1];
 tmp2 = (tmp2 << 8) | hw->mac.addr[0];
 tmp2 = PCH_GBE_PAUSE_PKT2_VALUE | (tmp2 << 16);

 tmp3 = hw->mac.addr[5];
 tmp3 = (tmp3 << 8) | hw->mac.addr[4];
 tmp3 = (tmp3 << 8) | hw->mac.addr[3];
 tmp3 = (tmp3 << 8) | hw->mac.addr[2];

 iowrite32(PCH_GBE_PAUSE_PKT1_VALUE, &hw->reg->PAUSE_PKT1);
 iowrite32(tmp2, &hw->reg->PAUSE_PKT2);
 iowrite32(tmp3, &hw->reg->PAUSE_PKT3);
 iowrite32(PCH_GBE_PAUSE_PKT4_VALUE, &hw->reg->PAUSE_PKT4);
 iowrite32(PCH_GBE_PAUSE_PKT5_VALUE, &hw->reg->PAUSE_PKT5);


 iowrite32(PCH_GBE_PS_PKT_RQ, &hw->reg->PAUSE_REQ);

 pr_debug("PAUSE_PKT1-5 reg : 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x\n",
   ioread32(&hw->reg->PAUSE_PKT1), ioread32(&hw->reg->PAUSE_PKT2),
   ioread32(&hw->reg->PAUSE_PKT3), ioread32(&hw->reg->PAUSE_PKT4),
   ioread32(&hw->reg->PAUSE_PKT5));

 return;
}
