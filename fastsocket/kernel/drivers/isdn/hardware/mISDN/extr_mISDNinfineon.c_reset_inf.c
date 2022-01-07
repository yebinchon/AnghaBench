
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_7__ {int adf2; } ;
struct TYPE_10__ {int conf; int (* write_reg ) (struct inf_hw*,int ,int) ;TYPE_3__* hscx; TYPE_2__ isac; } ;
struct TYPE_9__ {int start; scalar_t__ p; } ;
struct inf_hw {TYPE_5__ ipac; TYPE_4__ cfg; TYPE_1__* ci; int name; } ;
struct TYPE_8__ {int slot; } ;
struct TYPE_6__ {int typ; } ;


 int DEBUG_HW ;
 int DIVA_LED_A ;
 scalar_t__ DIVA_PCI_CTRL ;
 int DIVA_RESET_BIT ;
 scalar_t__ GAZEL_CNTRL ;
 scalar_t__ GAZEL_RESET ;
 scalar_t__ GAZEL_RESET_9050 ;
 int IPAC_ACFG ;
 int IPAC_AOE ;
 int IPAC_ATX ;
 int IPAC_PCFG ;
 scalar_t__ PITA_MISC_REG ;
 int PITA_PARA_MPX_MODE ;
 int PITA_PARA_SOFTRESET ;
 int PITA_SER_SOFTRESET ;
 scalar_t__ SCT_PLX_RESET_ADDR ;
 int SCT_PLX_RESET_BIT ;
 int debug ;
 int enable_hwirq (struct inf_hw*) ;
 scalar_t__ inl (scalar_t__) ;
 int inw (scalar_t__) ;
 int ipac_chip_reset (struct inf_hw*) ;
 int mdelay (int) ;
 int outb (int,scalar_t__) ;
 int outl (scalar_t__,scalar_t__) ;
 int outw (int ,scalar_t__) ;
 int pr_notice (char*,int ) ;
 int stub1 (struct inf_hw*,int ,int) ;
 int stub2 (struct inf_hw*,int ,int) ;
 int stub3 (struct inf_hw*,int ,int) ;
 int stub4 (struct inf_hw*,int ,int) ;
 int stub5 (struct inf_hw*,int ,int) ;
 int stub6 (struct inf_hw*,int ,int) ;
 int stub7 (struct inf_hw*,int ,int) ;
 int stub8 (struct inf_hw*,int ,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void
reset_inf(struct inf_hw *hw)
{
 u16 w;
 u32 val;

 if (debug & DEBUG_HW)
  pr_notice("%s: resetting card\n", hw->name);
 switch (hw->ci->typ) {
 case 139:
 case 136:
  outb(0, (u32)hw->cfg.start + DIVA_PCI_CTRL);
  mdelay(10);
  outb(DIVA_RESET_BIT, (u32)hw->cfg.start + DIVA_PCI_CTRL);
  mdelay(10);

  outb(9, (u32)hw->cfg.start + 0x69);
  outb(DIVA_RESET_BIT | DIVA_LED_A,
   (u32)hw->cfg.start + DIVA_PCI_CTRL);
  break;
 case 138:
  writel(PITA_PARA_SOFTRESET | PITA_PARA_MPX_MODE,
   hw->cfg.p + PITA_MISC_REG);
  mdelay(1);
  writel(PITA_PARA_MPX_MODE, hw->cfg.p + PITA_MISC_REG);
  mdelay(10);
  break;
 case 137:
  writel(PITA_PARA_SOFTRESET | PITA_PARA_MPX_MODE,
   hw->cfg.p + PITA_MISC_REG);
  mdelay(1);
  writel(PITA_PARA_MPX_MODE | PITA_SER_SOFTRESET,
   hw->cfg.p + PITA_MISC_REG);
  mdelay(10);
  break;
 case 128:
 case 130:
  ipac_chip_reset(hw);
  hw->ipac.write_reg(hw, IPAC_ACFG, 0xff);
  hw->ipac.write_reg(hw, IPAC_AOE, 0x00);
  hw->ipac.write_reg(hw, IPAC_PCFG, 0x12);
  break;
 case 132:
 case 131:
  ipac_chip_reset(hw);
  hw->ipac.write_reg(hw, IPAC_ACFG, 0x00);
  hw->ipac.write_reg(hw, IPAC_AOE, 0x3c);
  hw->ipac.write_reg(hw, IPAC_ATX, 0xff);
  break;
 case 133:
  break;
 case 129:
  w = inw((u32)hw->cfg.start + SCT_PLX_RESET_ADDR);
  w &= (~SCT_PLX_RESET_BIT);
  outw(w, (u32)hw->cfg.start + SCT_PLX_RESET_ADDR);
  mdelay(10);
  w = inw((u32)hw->cfg.start + SCT_PLX_RESET_ADDR);
  w |= SCT_PLX_RESET_BIT;
  outw(w, (u32)hw->cfg.start + SCT_PLX_RESET_ADDR);
  mdelay(10);
  break;
 case 135:
  val = inl((u32)hw->cfg.start + GAZEL_CNTRL);
  val |= (GAZEL_RESET_9050 + GAZEL_RESET);
  outl(val, (u32)hw->cfg.start + GAZEL_CNTRL);
  val &= ~(GAZEL_RESET_9050 + GAZEL_RESET);
  mdelay(4);
  outl(val, (u32)hw->cfg.start + GAZEL_CNTRL);
  mdelay(10);
  hw->ipac.isac.adf2 = 0x87;
  hw->ipac.hscx[0].slot = 0x1f;
  hw->ipac.hscx[0].slot = 0x23;
  break;
 case 134:
  val = inl((u32)hw->cfg.start + GAZEL_CNTRL);
  val |= (GAZEL_RESET_9050 + GAZEL_RESET);
  outl(val, (u32)hw->cfg.start + GAZEL_CNTRL);
  val &= ~(GAZEL_RESET_9050 + GAZEL_RESET);
  mdelay(4);
  outl(val, (u32)hw->cfg.start + GAZEL_CNTRL);
  mdelay(10);
  ipac_chip_reset(hw);
  hw->ipac.write_reg(hw, IPAC_ACFG, 0xff);
  hw->ipac.write_reg(hw, IPAC_AOE, 0x00);
  hw->ipac.conf = 0x01;
  break;
 default:
  return;
 }
 enable_hwirq(hw);
}
