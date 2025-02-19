
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iop_adma_chan {TYPE_2__* device; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {TYPE_1__ common; } ;


 int BUG () ;
 int IRQ_HANDLED ;
 int KERN_ERR ;
 int dev_printk (int ,int ,char*,char*,char*,char*,char*,char*,char*,char*) ;
 int iop_adma_device_clear_err_status (struct iop_adma_chan*) ;
 unsigned long iop_chan_get_status (struct iop_adma_chan*) ;
 scalar_t__ iop_is_err_int_mabort (unsigned long,struct iop_adma_chan*) ;
 scalar_t__ iop_is_err_int_parity (unsigned long,struct iop_adma_chan*) ;
 scalar_t__ iop_is_err_int_tabort (unsigned long,struct iop_adma_chan*) ;
 scalar_t__ iop_is_err_mcu_abort (unsigned long,struct iop_adma_chan*) ;
 scalar_t__ iop_is_err_pci_mabort (unsigned long,struct iop_adma_chan*) ;
 scalar_t__ iop_is_err_pci_tabort (unsigned long,struct iop_adma_chan*) ;
 scalar_t__ iop_is_err_split_tx (unsigned long,struct iop_adma_chan*) ;

__attribute__((used)) static irqreturn_t iop_adma_err_handler(int irq, void *data)
{
 struct iop_adma_chan *chan = data;
 unsigned long status = iop_chan_get_status(chan);

 dev_printk(KERN_ERR, chan->device->common.dev,
  "error ( %s%s%s%s%s%s%s)\n",
  iop_is_err_int_parity(status, chan) ? "int_parity " : "",
  iop_is_err_mcu_abort(status, chan) ? "mcu_abort " : "",
  iop_is_err_int_tabort(status, chan) ? "int_tabort " : "",
  iop_is_err_int_mabort(status, chan) ? "int_mabort " : "",
  iop_is_err_pci_tabort(status, chan) ? "pci_tabort " : "",
  iop_is_err_pci_mabort(status, chan) ? "pci_mabort " : "",
  iop_is_err_split_tx(status, chan) ? "split_tx " : "");

 iop_adma_device_clear_err_status(chan);

 BUG();

 return IRQ_HANDLED;
}
