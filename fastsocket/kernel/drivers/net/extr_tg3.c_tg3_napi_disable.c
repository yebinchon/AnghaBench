
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tg3 {int irq_cnt; TYPE_1__* napi; } ;
struct TYPE_2__ {int napi; } ;


 int napi_disable (int *) ;

__attribute__((used)) static void tg3_napi_disable(struct tg3 *tp)
{
 int i;

 for (i = tp->irq_cnt - 1; i >= 0; i--)
  napi_disable(&tp->napi[i].napi);
}
