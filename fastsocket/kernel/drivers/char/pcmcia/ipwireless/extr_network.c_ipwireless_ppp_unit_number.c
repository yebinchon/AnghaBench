
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_network {int lock; int * ppp_channel; } ;


 int ppp_unit_number (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ipwireless_ppp_unit_number(struct ipw_network *network)
{
 int ret = -1;
 unsigned long flags;

 spin_lock_irqsave(&network->lock, flags);
 if (network->ppp_channel != ((void*)0))
  ret = ppp_unit_number(network->ppp_channel);
 spin_unlock_irqrestore(&network->lock, flags);

 return ret;
}
