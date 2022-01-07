
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int tv_sec; } ;


 int SYS_select_one ;
 int XTISS_SELECT_ONE_READ ;
 int __simc (int ,int,int ,int,int ,int ) ;

__attribute__((used)) static int inline simc_poll(int fd)
{
 struct timeval tv = { .tv_sec = 0, .tv_usec = 0 };

 return __simc(SYS_select_one, fd, XTISS_SELECT_ONE_READ, (int)&tv,0,0);
}
