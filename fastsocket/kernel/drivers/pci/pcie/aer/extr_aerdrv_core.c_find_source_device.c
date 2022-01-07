
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; int subordinate; } ;
struct aer_err_info {int id; scalar_t__ error_dev_num; } ;


 int KERN_DEBUG ;
 int dev_printk (int ,int *,char*,int ) ;
 int find_device_iter (struct pci_dev*,struct aer_err_info*) ;
 int pci_walk_bus (int ,int (*) (struct pci_dev*,struct aer_err_info*),struct aer_err_info*) ;

__attribute__((used)) static bool find_source_device(struct pci_dev *parent,
  struct aer_err_info *e_info)
{
 struct pci_dev *dev = parent;
 int result;


 e_info->error_dev_num = 0;


 result = find_device_iter(dev, e_info);
 if (result)
  return 1;

 pci_walk_bus(parent->subordinate, find_device_iter, e_info);

 if (!e_info->error_dev_num) {
  dev_printk(KERN_DEBUG, &parent->dev,
    "can't find device of ID%04x\n",
    e_info->id);
  return 0;
 }
 return 1;
}
