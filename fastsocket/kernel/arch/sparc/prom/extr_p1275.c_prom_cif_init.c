
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void (* prom_cif_handler ) (long*) ;unsigned long prom_cif_stack; } ;


 TYPE_1__ p1275buf ;

void prom_cif_init(void *cif_handler, void *cif_stack)
{
 p1275buf.prom_cif_handler = (void (*)(long *))cif_handler;
 p1275buf.prom_cif_stack = (unsigned long)cif_stack;
}
