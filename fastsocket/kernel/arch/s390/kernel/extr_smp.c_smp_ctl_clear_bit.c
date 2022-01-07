
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ec_creg_mask_parms {long* orvals; long* andvals; } ;


 int memset (long**,int,int) ;
 int on_each_cpu (int ,struct ec_creg_mask_parms*,int) ;
 int smp_ctl_bit_callback ;

void smp_ctl_clear_bit(int cr, int bit)
{
 struct ec_creg_mask_parms parms;

 memset(&parms.orvals, 0, sizeof(parms.orvals));
 memset(&parms.andvals, 0xff, sizeof(parms.andvals));
 parms.andvals[cr] = ~(1L << bit);
 on_each_cpu(smp_ctl_bit_callback, &parms, 1);
}
