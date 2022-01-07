
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct hpet_dev {int dummy; } ;
struct file {struct hpet_dev* private_data; } ;


 int hpet_ioctl_common (struct hpet_dev*,unsigned int,unsigned long,int ) ;

__attribute__((used)) static int
hpet_ioctl(struct inode *inode, struct file *file, unsigned int cmd,
    unsigned long arg)
{
 struct hpet_dev *devp;

 devp = file->private_data;
 return hpet_ioctl_common(devp, cmd, arg, 0);
}
