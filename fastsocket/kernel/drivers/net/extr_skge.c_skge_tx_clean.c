
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skge_tx_desc {scalar_t__ control; } ;
struct TYPE_2__ {struct skge_element* to_clean; struct skge_element* to_use; } ;
struct skge_port {TYPE_1__ tx_ring; } ;
struct skge_element {struct skge_tx_desc* desc; struct skge_element* next; } ;
struct net_device {int dummy; } ;


 struct skge_port* netdev_priv (struct net_device*) ;
 int skge_tx_free (struct skge_port*,struct skge_element*,scalar_t__) ;

__attribute__((used)) static void skge_tx_clean(struct net_device *dev)
{
 struct skge_port *skge = netdev_priv(dev);
 struct skge_element *e;

 for (e = skge->tx_ring.to_clean; e != skge->tx_ring.to_use; e = e->next) {
  struct skge_tx_desc *td = e->desc;
  skge_tx_free(skge, e, td->control);
  td->control = 0;
 }

 skge->tx_ring.to_clean = e;
}
