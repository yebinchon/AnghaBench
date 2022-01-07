
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hook_call (int ,int ) ;
 int hook_kick_dog ;

void CPU_KICK_DOG(void)
{
 (void)hook_call(hook_kick_dog, 0);
}
