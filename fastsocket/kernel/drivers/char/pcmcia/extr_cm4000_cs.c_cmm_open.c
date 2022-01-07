
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {int open; struct cm4000_dev* priv; } ;
struct inode {int dummy; } ;
struct file {int f_flags; struct cm4000_dev* private_data; } ;
struct cm4000_dev {int mdelay; } ;
struct TYPE_2__ {int pid; int comm; } ;


 int CM4000_MAX_DEV ;
 int DEBUGP (int,struct cm4000_dev*,char*,...) ;
 int EAGAIN ;
 int EBUSY ;
 int ENODEV ;
 int O_NONBLOCK ;
 int T_50MSEC ;
 int ZERO_DEV (struct cm4000_dev*) ;
 TYPE_1__* current ;
 struct pcmcia_device** dev_table ;
 int imajor (struct inode*) ;
 int iminor (struct inode*) ;
 int lock_kernel () ;
 int nonseekable_open (struct inode*,struct file*) ;
 int pcmcia_dev_present (struct pcmcia_device*) ;
 int start_monitor (struct cm4000_dev*) ;
 int unlock_kernel () ;

__attribute__((used)) static int cmm_open(struct inode *inode, struct file *filp)
{
 struct cm4000_dev *dev;
 struct pcmcia_device *link;
 int minor = iminor(inode);
 int ret;

 if (minor >= CM4000_MAX_DEV)
  return -ENODEV;

 lock_kernel();
 link = dev_table[minor];
 if (link == ((void*)0) || !pcmcia_dev_present(link)) {
  ret = -ENODEV;
  goto out;
 }

 if (link->open) {
  ret = -EBUSY;
  goto out;
 }

 dev = link->priv;
 filp->private_data = dev;

 DEBUGP(2, dev, "-> cmm_open(device=%d.%d process=%s,%d)\n",
       imajor(inode), minor, current->comm, current->pid);





 ZERO_DEV(dev);







 if (filp->f_flags & O_NONBLOCK) {
  ret = -EAGAIN;
  goto out;
 }

 dev->mdelay = T_50MSEC;


 start_monitor(dev);

 link->open = 1;

 DEBUGP(2, dev, "<- cmm_open\n");
 ret = nonseekable_open(inode, filp);
out:
 unlock_kernel();
 return ret;
}
