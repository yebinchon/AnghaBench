
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hook_call (int ,int,unsigned int) ;
 int hook_dog_timeout ;

void CPU_WATCHDOG_TIMEOUT(unsigned t)
{
 (void)hook_call(hook_dog_timeout, 1, t);
}
