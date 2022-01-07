
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tg3 {TYPE_1__* dev; } ;
struct TYPE_3__ {int trans_start; } ;


 int jiffies ;
 int netif_carrier_off (TYPE_1__*) ;
 int netif_tx_disable (TYPE_1__*) ;
 int tg3_napi_disable (struct tg3*) ;

__attribute__((used)) static inline void tg3_netif_stop(struct tg3 *tp)
{
 tp->dev->trans_start = jiffies;
 tg3_napi_disable(tp);
 netif_carrier_off(tp->dev);
 netif_tx_disable(tp->dev);
}
