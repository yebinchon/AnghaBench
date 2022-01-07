
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long* MCCR ;
 unsigned long MCCR_DCACHE_CBINV ;
 unsigned long MCCR_ICACHE_INV ;
 unsigned long MCCR_IIV ;

void _flush_cache_all(void)
{
 unsigned long mccr;



 *MCCR = MCCR_ICACHE_INV | MCCR_DCACHE_CBINV;

 while ((mccr = *MCCR) & MCCR_IIV);
}
