
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int rx_pool; } ;
struct vc_map {int index; TYPE_1__ rcv; int flags; struct atm_vcc* rx_vcc; } ;
struct idt77252_dev {int rct_base; int cmd_lock; int name; } ;
struct atm_vcc {int vci; } ;
struct TYPE_4__ {scalar_t__ max_sdu; } ;
struct atm_qos {int aal; TYPE_2__ rxtp; } ;






 int EBUSY ;
 int OPRINTK (char*,int ,unsigned long) ;
 unsigned long SAR_CMD_OPEN_CONNECTION ;
 scalar_t__ SAR_FB_SIZE_0 ;
 scalar_t__ SAR_FB_SIZE_1 ;
 scalar_t__ SAR_FB_SIZE_2 ;
 int SAR_RCTE_AAL34 ;
 int SAR_RCTE_AAL5 ;
 int SAR_RCTE_CONNECTOPEN ;
 int SAR_RCTE_FBP_01 ;
 int SAR_RCTE_FBP_1 ;
 int SAR_RCTE_FBP_2 ;
 int SAR_RCTE_FBP_3 ;
 int SAR_RCTE_OAM ;
 int SAR_RCTE_RAWCELLINTEN ;
 int SAR_RCTE_RCQ ;
 int SAR_REG_CMD ;
 int VCF_RX ;
 int flush_rx_pool (struct idt77252_dev*,int *) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;
 int waitfor_idle (struct idt77252_dev*) ;
 int write_sram (struct idt77252_dev*,unsigned long,int ) ;
 int writel (unsigned long,int ) ;

__attribute__((used)) static int
idt77252_init_rx(struct idt77252_dev *card, struct vc_map *vc,
   struct atm_vcc *vcc, struct atm_qos *qos)
{
 unsigned long flags;
 unsigned long addr;
 u32 rcte = 0;

 if (test_bit(VCF_RX, &vc->flags))
  return -EBUSY;

 vc->rx_vcc = vcc;
 set_bit(VCF_RX, &vc->flags);

 if ((vcc->vci == 3) || (vcc->vci == 4))
  return 0;

 flush_rx_pool(card, &vc->rcv.rx_pool);

 rcte |= SAR_RCTE_CONNECTOPEN;
 rcte |= SAR_RCTE_RAWCELLINTEN;

 switch (qos->aal) {
  case 131:
   rcte |= SAR_RCTE_RCQ;
   break;
  case 130:
   rcte |= SAR_RCTE_OAM;
   break;
  case 129:
   rcte |= SAR_RCTE_AAL34;
   break;
  case 128:
   rcte |= SAR_RCTE_AAL5;
   break;
  default:
   rcte |= SAR_RCTE_RCQ;
   break;
 }

 if (qos->aal != 128)
  rcte |= SAR_RCTE_FBP_1;
 else if (qos->rxtp.max_sdu > SAR_FB_SIZE_2)
  rcte |= SAR_RCTE_FBP_3;
 else if (qos->rxtp.max_sdu > SAR_FB_SIZE_1)
  rcte |= SAR_RCTE_FBP_2;
 else if (qos->rxtp.max_sdu > SAR_FB_SIZE_0)
  rcte |= SAR_RCTE_FBP_1;
 else
  rcte |= SAR_RCTE_FBP_01;

 addr = card->rct_base + (vc->index << 2);

 OPRINTK("%s: writing RCT at 0x%lx\n", card->name, addr);
 write_sram(card, addr, rcte);

 spin_lock_irqsave(&card->cmd_lock, flags);
 writel(SAR_CMD_OPEN_CONNECTION | (addr << 2), SAR_REG_CMD);
 waitfor_idle(card);
 spin_unlock_irqrestore(&card->cmd_lock, flags);

 return 0;
}
