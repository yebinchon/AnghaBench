
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_irq_disable () ;
 int software_reset () ;

__attribute__((used)) static void vr41xx_restart(char *command)
{
 local_irq_disable();
 software_reset();
 while (1) ;
}
