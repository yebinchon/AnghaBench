
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned short STS; unsigned short* Parm; } ;
struct net_local {TYPE_1__ ssb; } ;
struct net_device {int dummy; } ;
typedef TYPE_1__ SSB ;


 int CMD_CLEAR_SYSTEM_IRQ ;
 int CMD_SSB_CLEAR ;
 struct net_local* netdev_priv (struct net_device*) ;
 int tms380tr_exec_sifcmd (struct net_device*,int) ;

__attribute__((used)) static void tms380tr_reset_interrupt(struct net_device *dev)
{
 struct net_local *tp = netdev_priv(dev);
 SSB *ssb = &tp->ssb;







 ssb->STS = (unsigned short) -1;
 ssb->Parm[0] = (unsigned short) -1;
 ssb->Parm[1] = (unsigned short) -1;
 ssb->Parm[2] = (unsigned short) -1;




 tms380tr_exec_sifcmd(dev, CMD_SSB_CLEAR | CMD_CLEAR_SYSTEM_IRQ);

 return;
}
