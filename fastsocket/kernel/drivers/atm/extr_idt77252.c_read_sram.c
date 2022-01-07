
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct idt77252_dev {int cmd_lock; } ;


 unsigned long SAR_CMD_READ_SRAM ;
 int SAR_REG_CMD ;
 int SAR_REG_DR0 ;
 int readl (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int waitfor_idle (struct idt77252_dev*) ;
 int writel (unsigned long,int ) ;

__attribute__((used)) static u32
read_sram(struct idt77252_dev *card, unsigned long addr)
{
 unsigned long flags;
 u32 value;

 spin_lock_irqsave(&card->cmd_lock, flags);
 writel(SAR_CMD_READ_SRAM | (addr << 2), SAR_REG_CMD);
 waitfor_idle(card);
 value = readl(SAR_REG_DR0);
 spin_unlock_irqrestore(&card->cmd_lock, flags);
 return value;
}
