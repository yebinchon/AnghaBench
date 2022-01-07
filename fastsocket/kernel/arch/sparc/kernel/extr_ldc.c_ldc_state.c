
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ldc_channel {int state; } ;



int ldc_state(struct ldc_channel *lp)
{
 return lp->state;
}
