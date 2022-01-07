
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYS_open ;
 int __simc (int ,int,int,int,int ,int ) ;

__attribute__((used)) static int inline simc_open(char *file, int flags, int mode)
{
 return __simc(SYS_open, (int) file, flags, mode, 0, 0);
}
