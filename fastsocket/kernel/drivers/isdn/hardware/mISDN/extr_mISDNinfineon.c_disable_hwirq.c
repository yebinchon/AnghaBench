
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_4__ {int start; int p; } ;
struct inf_hw {TYPE_2__ cfg; TYPE_1__* ci; } ;
struct TYPE_3__ {int typ; } ;


 scalar_t__ ELSA_IRQ_ADDR ;
 scalar_t__ GAZEL_INCSR ;
 scalar_t__ NICCY_IRQ_CTRL_REG ;
 scalar_t__ NICCY_IRQ_DISABLE ;
 int QS1000_IRQ_OFF ;
 int QS3000_IRQ_OFF ;
 scalar_t__ SCT_PLX_IRQ_ADDR ;
 int SCT_PLX_IRQ_ENABLE ;
 scalar_t__ TIGER_AUX_IRQMASK ;
 scalar_t__ inl (scalar_t__) ;
 int inw (scalar_t__) ;
 int outb (int ,scalar_t__) ;
 int outl (scalar_t__,scalar_t__) ;
 int outw (int ,scalar_t__) ;
 int writel (int ,int ) ;

__attribute__((used)) static void
disable_hwirq(struct inf_hw *hw)
{
 u16 w;
 u32 val;

 switch (hw->ci->typ) {
 case 137:
 case 136:
  writel(0, hw->cfg.p);
  break;
 case 128:
 case 130:
  outb(0, (u32)hw->cfg.start + TIGER_AUX_IRQMASK);
  break;
 case 132:
  outb(QS1000_IRQ_OFF, (u32)hw->cfg.start + ELSA_IRQ_ADDR);
  break;
 case 131:
  outb(QS3000_IRQ_OFF, (u32)hw->cfg.start + ELSA_IRQ_ADDR);
  break;
 case 133:
  val = inl((u32)hw->cfg.start + NICCY_IRQ_CTRL_REG);
  val &= NICCY_IRQ_DISABLE;
  outl(val, (u32)hw->cfg.start + NICCY_IRQ_CTRL_REG);
  break;
 case 129:
  w = inw((u32)hw->cfg.start + SCT_PLX_IRQ_ADDR);
  w &= (~SCT_PLX_IRQ_ENABLE);
  outw(w, (u32)hw->cfg.start + SCT_PLX_IRQ_ADDR);
  break;
 case 135:
 case 134:
  outb(0, (u32)hw->cfg.start + GAZEL_INCSR);
  break;
 default:
  break;
 }
}
