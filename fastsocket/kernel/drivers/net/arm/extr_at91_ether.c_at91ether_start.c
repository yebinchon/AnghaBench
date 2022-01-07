
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct recv_desc_bufs {TYPE_1__* descriptors; int ** recv_buf; } ;
struct net_device {int dummy; } ;
struct at91_private {scalar_t__ rxBuffIndex; struct recv_desc_bufs* dlist_phys; struct recv_desc_bufs* dlist; } ;
struct TYPE_2__ {unsigned int addr; scalar_t__ size; } ;


 int AT91_EMAC_CTL ;
 int AT91_EMAC_RBQP ;
 unsigned long AT91_EMAC_RE ;
 unsigned long AT91_EMAC_TE ;
 unsigned int EMAC_DESC_WRAP ;
 int MAX_RX_DESCR ;
 unsigned long at91_emac_read (int ) ;
 int at91_emac_write (int ,unsigned long) ;
 struct at91_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void at91ether_start(struct net_device *dev)
{
 struct at91_private *lp = netdev_priv(dev);
 struct recv_desc_bufs *dlist, *dlist_phys;
 int i;
 unsigned long ctl;

 dlist = lp->dlist;
 dlist_phys = lp->dlist_phys;

 for (i = 0; i < MAX_RX_DESCR; i++) {
  dlist->descriptors[i].addr = (unsigned int) &dlist_phys->recv_buf[i][0];
  dlist->descriptors[i].size = 0;
 }


 dlist->descriptors[i-1].addr |= EMAC_DESC_WRAP;


 lp->rxBuffIndex = 0;


 at91_emac_write(AT91_EMAC_RBQP, (unsigned long) dlist_phys);


 ctl = at91_emac_read(AT91_EMAC_CTL);
 at91_emac_write(AT91_EMAC_CTL, ctl | AT91_EMAC_RE | AT91_EMAC_TE);
}
