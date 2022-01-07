
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYS_ioctl ;
 int __simc (int ,int,int,int,int ,int ) ;

__attribute__((used)) static int inline simc_ioctl(int fd, int request, void *arg)
{
 return __simc(SYS_ioctl, fd, request, (int) arg, 0, 0);
}
