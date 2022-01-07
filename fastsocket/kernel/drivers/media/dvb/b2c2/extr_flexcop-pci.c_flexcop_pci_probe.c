
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;
struct flexcop_pci {int irq_check_work; struct pci_dev* pdev; struct flexcop_device* fc_dev; } ;
struct flexcop_device {int owner; int * dev; int bus_type; scalar_t__ pid_filtering; int stream_control; int get_mac_addr; int i2c_request; int write_ibi_reg; int read_ibi_reg; struct flexcop_pci* bus_specific; } ;


 int ENOMEM ;
 int FC_PCI ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int THIS_MODULE ;
 scalar_t__ enable_pid_filtering ;
 int err (char*) ;
 int flexcop_device_exit (struct flexcop_device*) ;
 int flexcop_device_initialize (struct flexcop_device*) ;
 int flexcop_device_kfree (struct flexcop_device*) ;
 struct flexcop_device* flexcop_device_kmalloc (int) ;
 int flexcop_eeprom_check_mac_addr ;
 int flexcop_i2c_request ;
 int flexcop_pci_dma_init (struct flexcop_pci*) ;
 int flexcop_pci_exit (struct flexcop_pci*) ;
 int flexcop_pci_init (struct flexcop_pci*) ;
 int flexcop_pci_irq_check_work ;
 int flexcop_pci_read_ibi_reg ;
 int flexcop_pci_stream_control ;
 int flexcop_pci_write_ibi_reg ;
 int info (char*) ;
 int irq_chk_intv ;
 int msecs_to_jiffies (int) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static int flexcop_pci_probe(struct pci_dev *pdev,
  const struct pci_device_id *ent)
{
 struct flexcop_device *fc;
 struct flexcop_pci *fc_pci;
 int ret = -ENOMEM;

 if ((fc = flexcop_device_kmalloc(sizeof(struct flexcop_pci))) == ((void*)0)) {
  err("out of memory\n");
  return -ENOMEM;
 }


 fc_pci = fc->bus_specific;
 fc_pci->fc_dev = fc;

 fc->read_ibi_reg = flexcop_pci_read_ibi_reg;
 fc->write_ibi_reg = flexcop_pci_write_ibi_reg;
 fc->i2c_request = flexcop_i2c_request;
 fc->get_mac_addr = flexcop_eeprom_check_mac_addr;
 fc->stream_control = flexcop_pci_stream_control;

 if (enable_pid_filtering)
  info("will use the HW PID filter.");
 else
  info("will pass the complete TS to the demuxer.");

 fc->pid_filtering = enable_pid_filtering;
 fc->bus_type = FC_PCI;
 fc->dev = &pdev->dev;
 fc->owner = THIS_MODULE;


 fc_pci->pdev = pdev;
 if ((ret = flexcop_pci_init(fc_pci)) != 0)
  goto err_kfree;


 if ((ret = flexcop_device_initialize(fc)) != 0)
  goto err_pci_exit;


 if ((ret = flexcop_pci_dma_init(fc_pci)) != 0)
  goto err_fc_exit;

 INIT_DELAYED_WORK(&fc_pci->irq_check_work, flexcop_pci_irq_check_work);

 if (irq_chk_intv > 0)
  schedule_delayed_work(&fc_pci->irq_check_work,
    msecs_to_jiffies(irq_chk_intv < 100 ?
     100 :
     irq_chk_intv));
 return ret;

err_fc_exit:
 flexcop_device_exit(fc);
err_pci_exit:
 flexcop_pci_exit(fc_pci);
err_kfree:
 flexcop_device_kfree(fc);
 return ret;
}
