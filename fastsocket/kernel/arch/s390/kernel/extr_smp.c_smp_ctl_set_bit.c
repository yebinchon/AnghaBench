
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ec_creg_mask_parms {int* orvals; int* andvals; } ;


 int memset (int**,int,int) ;
 int on_each_cpu (int ,struct ec_creg_mask_parms*,int) ;
 int smp_ctl_bit_callback ;

void smp_ctl_set_bit(int cr, int bit)
{
 struct ec_creg_mask_parms parms;

 memset(&parms.orvals, 0, sizeof(parms.orvals));
 memset(&parms.andvals, 0xff, sizeof(parms.andvals));
 parms.orvals[cr] = 1 << bit;
 on_each_cpu(smp_ctl_bit_callback, &parms, 1);
}
