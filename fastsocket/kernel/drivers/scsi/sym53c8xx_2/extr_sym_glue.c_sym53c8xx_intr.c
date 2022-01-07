
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_data {int pdev; } ;
struct Scsi_Host {int host_lock; } ;
typedef int irqreturn_t ;


 int DEBUG_FLAGS ;
 int DEBUG_TINY ;
 int IRQ_NONE ;
 scalar_t__ pci_channel_offline (int ) ;
 int printf_debug (char*) ;
 struct sym_data* shost_priv (struct Scsi_Host*) ;
 int spin_lock (int ) ;
 int spin_unlock (int ) ;
 int sym_interrupt (struct Scsi_Host*) ;

__attribute__((used)) static irqreturn_t sym53c8xx_intr(int irq, void *dev_id)
{
 struct Scsi_Host *shost = dev_id;
 struct sym_data *sym_data = shost_priv(shost);
 irqreturn_t result;


 if (pci_channel_offline(sym_data->pdev))
  return IRQ_NONE;

 if (DEBUG_FLAGS & DEBUG_TINY) printf_debug ("[");

 spin_lock(shost->host_lock);
 result = sym_interrupt(shost);
 spin_unlock(shost->host_lock);

 if (DEBUG_FLAGS & DEBUG_TINY) printf_debug ("]\n");

 return result;
}
