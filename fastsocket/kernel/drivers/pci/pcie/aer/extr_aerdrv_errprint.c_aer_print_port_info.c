
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct aer_err_info {size_t severity; int id; scalar_t__ multi_error_valid; } ;


 int * aer_error_severity_string ;
 int dev_info (int *,char*,char*,int ,int ) ;

void aer_print_port_info(struct pci_dev *dev, struct aer_err_info *info)
{
 dev_info(&dev->dev, "AER: %s%s error received: id=%04x\n",
  info->multi_error_valid ? "Multiple " : "",
  aer_error_severity_string[info->severity], info->id);
}
