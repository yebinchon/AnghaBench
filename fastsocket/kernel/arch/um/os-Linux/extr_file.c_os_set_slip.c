
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int N_SLIP ;
 int SIOCSIFENCAP ;
 int TIOCSETD ;
 int errno ;
 scalar_t__ ioctl (int,int ,int*) ;

int os_set_slip(int fd)
{
 int disc, sencap;

 disc = N_SLIP;
 if (ioctl(fd, TIOCSETD, &disc) < 0)
  return -errno;

 sencap = 0;
 if (ioctl(fd, SIOCSIFENCAP, &sencap) < 0)
  return -errno;

 return 0;
}
