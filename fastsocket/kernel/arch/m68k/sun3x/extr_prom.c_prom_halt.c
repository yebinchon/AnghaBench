
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sun3x_halt () ;

void prom_halt (void)
{
 sun3x_halt();
}
