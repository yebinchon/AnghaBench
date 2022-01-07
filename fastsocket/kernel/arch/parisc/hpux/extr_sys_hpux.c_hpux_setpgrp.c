
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sys_setpgid (int ,int ) ;

int hpux_setpgrp(void)
{
 return sys_setpgid(0,0);
}
