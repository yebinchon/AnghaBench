
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * eth_addr; } ;
struct sgiseeq_regs {TYPE_1__ rw; int tstat; } ;
struct sgiseeq_private {struct sgiseeq_regs* sregs; } ;
struct net_device {int * dev_addr; } ;


 int SEEQ_TCMD_RB0 ;
 struct sgiseeq_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static inline void __sgiseeq_set_mac_address(struct net_device *dev)
{
 struct sgiseeq_private *sp = netdev_priv(dev);
 struct sgiseeq_regs *sregs = sp->sregs;
 int i;

 sregs->tstat = SEEQ_TCMD_RB0;
 for (i = 0; i < 6; i++)
  sregs->rw.eth_addr[i] = dev->dev_addr[i];
}
