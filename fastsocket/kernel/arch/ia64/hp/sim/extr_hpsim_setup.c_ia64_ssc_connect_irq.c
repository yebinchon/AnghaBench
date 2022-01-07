
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SSC_CONNECT_INTERRUPT ;
 int ia64_ssc (long,long,int ,int ,int ) ;

void
ia64_ssc_connect_irq (long intr, long irq)
{
 ia64_ssc(intr, irq, 0, 0, SSC_CONNECT_INTERRUPT);
}
