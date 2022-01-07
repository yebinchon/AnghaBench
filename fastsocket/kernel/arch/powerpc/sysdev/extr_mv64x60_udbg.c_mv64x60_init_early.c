
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mv64x60_udbg_init () ;

void mv64x60_init_early(void)
{
 mv64x60_udbg_init();
}
