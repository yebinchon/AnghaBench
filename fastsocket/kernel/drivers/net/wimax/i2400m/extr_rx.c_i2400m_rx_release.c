
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2400m {TYPE_1__* rx_roq; scalar_t__ rx_reorder; } ;
struct TYPE_2__ {struct TYPE_2__* log; int queue; } ;


 int I2400M_RO_CIN ;
 int __skb_queue_purge (int *) ;
 int kfree (TYPE_1__*) ;

void i2400m_rx_release(struct i2400m *i2400m)
{
 if (i2400m->rx_reorder) {
  unsigned itr;
  for(itr = 0; itr < I2400M_RO_CIN + 1; itr++)
   __skb_queue_purge(&i2400m->rx_roq[itr].queue);
  kfree(i2400m->rx_roq[0].log);
  kfree(i2400m->rx_roq);
 }
}
