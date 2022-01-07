
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYS_close ;
 int __simc (int ,int,int ,int ,int ,int ) ;

__attribute__((used)) static int inline simc_close(int fd)
{
 return __simc(SYS_close, fd, 0, 0, 0, 0);
}
