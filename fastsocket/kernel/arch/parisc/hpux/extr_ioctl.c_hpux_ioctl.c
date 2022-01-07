
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOPNOTSUPP ;
 int _IOC_TYPE (unsigned long) ;
 int hpux_ioctl_t (int,unsigned long,unsigned long) ;
 int sys_ioctl (int,unsigned long,unsigned long) ;

int hpux_ioctl(int fd, unsigned long cmd, unsigned long arg)
{
 int result = -EOPNOTSUPP;
 int type = _IOC_TYPE(cmd);
 switch (type) {
 case 'T':

  result = sys_ioctl(fd, cmd, arg);
  break;
 case 't':
  result = hpux_ioctl_t(fd, cmd, arg);
  break;
 }
 return result;
}
