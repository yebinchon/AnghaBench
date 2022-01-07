
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getpgrp () ;
 int register_winch_irq (int,int,int,void*,int ) ;

int is_skas_winch(int pid, int fd, void *data)
{
 if (pid != getpgrp())
  return 0;

 register_winch_irq(-1, fd, -1, data, 0);
 return 1;
}
