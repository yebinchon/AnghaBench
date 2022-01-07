
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int panic (char*) ;
 int prom_halt () ;

void machine_halt(void)
{
 prom_halt();
 panic("Halt failed!");
}
