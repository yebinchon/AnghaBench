
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int rxl; } ;
struct net_local {int delta_rxl; int cur_rxl_index; scalar_t__ cur_rxl_rcvd; scalar_t__ prev_rxl_rcvd; TYPE_1__ csr1; } ;
struct net_device {scalar_t__ base_addr; } ;


 scalar_t__ CSR0 ;
 scalar_t__ CSR1 ;
 int inb (scalar_t__) ;
 struct net_local* netdev_priv (struct net_device*) ;
 int outb (int ,scalar_t__) ;
 int * rxl_tab ;

__attribute__((used)) static void
change_level( struct net_device *dev )
{
 struct net_local *nl = netdev_priv(dev);

 if( nl->delta_rxl == 0 )
  return;

 if( nl->cur_rxl_index == 0 )
  nl->delta_rxl = 1;
 else if( nl->cur_rxl_index == 15 )
  nl->delta_rxl = -1;
 else if( nl->cur_rxl_rcvd < nl->prev_rxl_rcvd )
  nl->delta_rxl = -nl->delta_rxl;

 nl->csr1.rxl = rxl_tab[ nl->cur_rxl_index += nl->delta_rxl ];
 inb( dev->base_addr + CSR0 );
 outb( *(u8 *)&nl->csr1, dev->base_addr + CSR1 );

 nl->prev_rxl_rcvd = nl->cur_rxl_rcvd;
 nl->cur_rxl_rcvd = 0;
}
