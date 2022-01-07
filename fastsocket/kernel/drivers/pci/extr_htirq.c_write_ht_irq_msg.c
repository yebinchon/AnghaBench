
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ht_irq_msg {int address_hi; int address_lo; } ;
struct ht_irq_cfg {struct ht_irq_msg msg; int dev; int (* update ) (int ,unsigned int,struct ht_irq_msg*) ;scalar_t__ pos; scalar_t__ idx; } ;


 struct ht_irq_cfg* get_irq_data (unsigned int) ;
 int ht_irq_lock ;
 int pci_write_config_byte (int ,scalar_t__,scalar_t__) ;
 int pci_write_config_dword (int ,scalar_t__,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,unsigned int,struct ht_irq_msg*) ;

void write_ht_irq_msg(unsigned int irq, struct ht_irq_msg *msg)
{
 struct ht_irq_cfg *cfg = get_irq_data(irq);
 unsigned long flags;
 spin_lock_irqsave(&ht_irq_lock, flags);
 if (cfg->msg.address_lo != msg->address_lo) {
  pci_write_config_byte(cfg->dev, cfg->pos + 2, cfg->idx);
  pci_write_config_dword(cfg->dev, cfg->pos + 4, msg->address_lo);
 }
 if (cfg->msg.address_hi != msg->address_hi) {
  pci_write_config_byte(cfg->dev, cfg->pos + 2, cfg->idx + 1);
  pci_write_config_dword(cfg->dev, cfg->pos + 4, msg->address_hi);
 }
 if (cfg->update)
  cfg->update(cfg->dev, irq, msg);
 spin_unlock_irqrestore(&ht_irq_lock, flags);
 cfg->msg = *msg;
}
