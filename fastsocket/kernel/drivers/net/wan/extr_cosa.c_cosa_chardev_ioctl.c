
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct channel_data* private_data; } ;
struct cosa_data {int dummy; } ;
struct channel_data {struct cosa_data* cosa; } ;


 int cosa_ioctl_common (struct cosa_data*,struct channel_data*,unsigned int,unsigned long) ;

__attribute__((used)) static int cosa_chardev_ioctl(struct inode *inode, struct file *file,
 unsigned int cmd, unsigned long arg)
{
 struct channel_data *channel = file->private_data;
 struct cosa_data *cosa = channel->cosa;
 return cosa_ioctl_common(cosa, channel, cmd, arg);
}
