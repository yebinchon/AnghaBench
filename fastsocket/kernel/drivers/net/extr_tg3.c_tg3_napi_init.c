
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tg3 {int irq_cnt; TYPE_1__* napi; int dev; } ;
struct TYPE_2__ {int napi; } ;


 int netif_napi_add (int ,int *,int ,int) ;
 int tg3_poll ;
 int tg3_poll_msix ;

__attribute__((used)) static void tg3_napi_init(struct tg3 *tp)
{
 int i;

 netif_napi_add(tp->dev, &tp->napi[0].napi, tg3_poll, 64);
 for (i = 1; i < tp->irq_cnt; i++)
  netif_napi_add(tp->dev, &tp->napi[i].napi, tg3_poll_msix, 64);
}
