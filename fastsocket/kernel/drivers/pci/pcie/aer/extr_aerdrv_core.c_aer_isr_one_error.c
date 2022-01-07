
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcie_device {TYPE_1__* port; } ;
struct aer_err_source {int status; int id; } ;
struct aer_err_info {int multi_error_valid; int severity; int id; } ;
struct TYPE_3__ {int dev; } ;


 int AER_CORRECTABLE ;
 int AER_FATAL ;
 int AER_NONFATAL ;
 int ERR_COR_ID (int ) ;
 int ERR_UNCOR_ID (int ) ;
 int GFP_KERNEL ;
 int KERN_DEBUG ;
 int PCI_ERR_ROOT_COR_RCV ;
 int PCI_ERR_ROOT_FATAL_RCV ;
 int PCI_ERR_ROOT_MULTI_COR_RCV ;
 int PCI_ERR_ROOT_MULTI_UNCOR_RCV ;
 int PCI_ERR_ROOT_UNCOR_RCV ;
 int aer_print_port_info (TYPE_1__*,struct aer_err_info*) ;
 int aer_process_err_devices (struct pcie_device*,struct aer_err_info*) ;
 int dev_printk (int ,int *,char*) ;
 scalar_t__ find_source_device (TYPE_1__*,struct aer_err_info*) ;
 int kfree (struct aer_err_info*) ;
 struct aer_err_info* kmalloc (int,int ) ;

__attribute__((used)) static void aer_isr_one_error(struct pcie_device *p_device,
  struct aer_err_source *e_src)
{
 struct aer_err_info *e_info;


 e_info = kmalloc(sizeof(struct aer_err_info), GFP_KERNEL);
 if (!e_info) {
  dev_printk(KERN_DEBUG, &p_device->port->dev,
   "Can't allocate mem when processing AER errors\n");
  return;
 }





 if (e_src->status & PCI_ERR_ROOT_COR_RCV) {
  e_info->id = ERR_COR_ID(e_src->id);
  e_info->severity = AER_CORRECTABLE;

  if (e_src->status & PCI_ERR_ROOT_MULTI_COR_RCV)
   e_info->multi_error_valid = 1;
  else
   e_info->multi_error_valid = 0;

  aer_print_port_info(p_device->port, e_info);

  if (find_source_device(p_device->port, e_info))
   aer_process_err_devices(p_device, e_info);
 }

 if (e_src->status & PCI_ERR_ROOT_UNCOR_RCV) {
  e_info->id = ERR_UNCOR_ID(e_src->id);

  if (e_src->status & PCI_ERR_ROOT_FATAL_RCV)
   e_info->severity = AER_FATAL;
  else
   e_info->severity = AER_NONFATAL;

  if (e_src->status & PCI_ERR_ROOT_MULTI_UNCOR_RCV)
   e_info->multi_error_valid = 1;
  else
   e_info->multi_error_valid = 0;

  aer_print_port_info(p_device->port, e_info);

  if (find_source_device(p_device->port, e_info))
   aer_process_err_devices(p_device, e_info);
 }

 kfree(e_info);
}
