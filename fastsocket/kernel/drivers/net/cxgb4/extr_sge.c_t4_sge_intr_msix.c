
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_rspq {int napi; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int napi_schedule (int *) ;

irqreturn_t t4_sge_intr_msix(int irq, void *cookie)
{
 struct sge_rspq *q = cookie;

 napi_schedule(&q->napi);
 return IRQ_HANDLED;
}
