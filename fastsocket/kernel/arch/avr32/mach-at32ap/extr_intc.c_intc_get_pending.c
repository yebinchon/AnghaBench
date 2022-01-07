
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ INTREQ0 ;
 int intc0 ;
 unsigned long intc_readl (int *,scalar_t__) ;

unsigned long intc_get_pending(unsigned int group)
{
 return intc_readl(&intc0, INTREQ0 + 4 * group);
}
