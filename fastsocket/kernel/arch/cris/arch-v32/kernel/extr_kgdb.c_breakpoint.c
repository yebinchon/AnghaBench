
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dynamic_bp ;
 int kgdb_started ;

void
breakpoint(void)
{
 kgdb_started = 1;
 dynamic_bp = 0;
 __asm__ volatile ("break 8");
}
