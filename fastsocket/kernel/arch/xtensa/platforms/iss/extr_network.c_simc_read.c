
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYS_read ;
 int __simc (int ,int,int,size_t,int ,int ) ;

__attribute__((used)) static int inline simc_read(int fd, void *buf, size_t count)
{
 return __simc(SYS_read, fd, (int) buf, count, 0, 0);
}
