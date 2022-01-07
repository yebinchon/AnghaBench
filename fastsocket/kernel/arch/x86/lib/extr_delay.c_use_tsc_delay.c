
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int delay_fn ;
 int delay_tsc ;

void use_tsc_delay(void)
{
 delay_fn = delay_tsc;
}
