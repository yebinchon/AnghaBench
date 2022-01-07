
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;




 scalar_t__ CRYPTOCOP_IO_MAXNR ;

 int DEBUG_API (int ) ;
 int EFAULT ;
 int ENOTTY ;
 scalar_t__ ETRAXCRYPTOCOP_IOCTYPE ;
 int VERIFY_READ ;
 int VERIFY_WRITE ;
 int _IOC_DIR (unsigned int) ;
 scalar_t__ _IOC_NR (unsigned int) ;
 int _IOC_READ ;
 int _IOC_SIZE (unsigned int) ;
 scalar_t__ _IOC_TYPE (unsigned int) ;
 int _IOC_WRITE ;
 int access_ok (int ,void*,int ) ;
 int cryptocop_ioctl_close_session (struct inode*,struct file*,unsigned int,unsigned long) ;
 int cryptocop_ioctl_create_session (struct inode*,struct file*,unsigned int,unsigned long) ;
 int cryptocop_ioctl_process (struct inode*,struct file*,unsigned int,unsigned long) ;
 int printk (char*) ;

__attribute__((used)) static int cryptocop_ioctl(struct inode *inode, struct file *filp, unsigned int cmd, unsigned long arg)
{
 int err = 0;
 if (_IOC_TYPE(cmd) != ETRAXCRYPTOCOP_IOCTYPE) {
  DEBUG_API(printk("cryptocop_ioctl: wrong type\n"));
  return -ENOTTY;
 }
 if (_IOC_NR(cmd) > CRYPTOCOP_IO_MAXNR){
  return -ENOTTY;
 }


 if (_IOC_DIR(cmd) & _IOC_READ)
  err = !access_ok(VERIFY_WRITE, (void *)arg, _IOC_SIZE(cmd));
 else if (_IOC_DIR(cmd) & _IOC_WRITE)
  err = !access_ok(VERIFY_READ, (void *)arg, _IOC_SIZE(cmd));
 if (err) return -EFAULT;

 switch (cmd) {
 case 129:
  return cryptocop_ioctl_create_session(inode, filp, cmd, arg);
 case 130:
  return cryptocop_ioctl_close_session(inode, filp, cmd, arg);
 case 128:
  return cryptocop_ioctl_process(inode, filp, cmd, arg);
 default:
  DEBUG_API(printk("cryptocop_ioctl: unknown command\n"));
  return -ENOTTY;
 }
 return 0;
}
