
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {scalar_t__ open; struct cm4000_dev* priv; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct cm4000_dev {int devq; } ;


 int CM4000_MAX_DEV ;
 int DEBUGP (int,struct cm4000_dev*,char*,...) ;
 int ENODEV ;
 int ZERO_DEV (struct cm4000_dev*) ;
 struct pcmcia_device** dev_table ;
 int imajor (struct inode*) ;
 int iminor (struct inode*) ;
 int stop_monitor (struct cm4000_dev*) ;
 int wake_up (int *) ;

__attribute__((used)) static int cmm_close(struct inode *inode, struct file *filp)
{
 struct cm4000_dev *dev;
 struct pcmcia_device *link;
 int minor = iminor(inode);

 if (minor >= CM4000_MAX_DEV)
  return -ENODEV;

 link = dev_table[minor];
 if (link == ((void*)0))
  return -ENODEV;

 dev = link->priv;

 DEBUGP(2, dev, "-> cmm_close(maj/min=%d.%d)\n",
        imajor(inode), minor);

 stop_monitor(dev);

 ZERO_DEV(dev);

 link->open = 0;
 wake_up(&dev->devq);

 DEBUGP(2, dev, "cmm_close\n");
 return 0;
}
