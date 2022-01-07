
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cris_hlt_counter ;

void disable_hlt(void)
{
 cris_hlt_counter++;
}
