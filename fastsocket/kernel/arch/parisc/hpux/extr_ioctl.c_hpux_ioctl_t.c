
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOPNOTSUPP ;
 int TIOCGWINSZ ;
 int TIOCSWINSZ ;
 int _IOC_NR (unsigned long) ;
 int sys_ioctl (int,int ,unsigned long) ;

__attribute__((used)) static int hpux_ioctl_t(int fd, unsigned long cmd, unsigned long arg)
{
 int result = -EOPNOTSUPP;
 int nr = _IOC_NR(cmd);
 switch (nr) {
 case 106:
  result = sys_ioctl(fd, TIOCSWINSZ, arg);
  break;
 case 107:
  result = sys_ioctl(fd, TIOCGWINSZ, arg);
  break;
 }
 return result;
}
