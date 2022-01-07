
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void machine_halt(void)
{





 asm volatile("sleep 3\n\t"
       "sub pc, -2");
}
