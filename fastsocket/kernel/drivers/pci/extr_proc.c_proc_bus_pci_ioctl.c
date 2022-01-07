
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc_dir_entry {struct pci_dev* data; } ;
struct pci_filp_private {int write_combine; int mmap_state; } ;
struct pci_dev {int bus; } ;
struct file {struct pci_filp_private* private_data; TYPE_1__* f_dentry; } ;
struct TYPE_2__ {int d_inode; } ;


 int EINVAL ;




 struct proc_dir_entry* PDE (int ) ;
 int lock_kernel () ;
 int pci_domain_nr (int ) ;
 int pci_mmap_io ;
 int pci_mmap_mem ;
 int unlock_kernel () ;

__attribute__((used)) static long proc_bus_pci_ioctl(struct file *file, unsigned int cmd,
          unsigned long arg)
{
 const struct proc_dir_entry *dp = PDE(file->f_dentry->d_inode);
 struct pci_dev *dev = dp->data;



 int ret = 0;

 lock_kernel();

 switch (cmd) {
 case 131:
  ret = pci_domain_nr(dev->bus);
  break;
 default:
  ret = -EINVAL;
  break;
 };

 unlock_kernel();
 return ret;
}
