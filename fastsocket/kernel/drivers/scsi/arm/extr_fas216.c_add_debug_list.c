
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stat; int ssr; int isr; int ph; } ;


 int PH_SIZE ;
 TYPE_1__* ph_list ;
 size_t ph_ptr ;

__attribute__((used)) static void add_debug_list(int stat, int ssr, int isr, int ph)
{
 ph_list[ph_ptr].stat = stat;
 ph_list[ph_ptr].ssr = ssr;
 ph_list[ph_ptr].isr = isr;
 ph_list[ph_ptr].ph = ph;

 ph_ptr = (ph_ptr + 1) & (PH_SIZE-1);
}
