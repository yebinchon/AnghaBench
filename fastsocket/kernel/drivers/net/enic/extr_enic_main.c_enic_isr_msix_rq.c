
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct napi_struct {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int napi_schedule (struct napi_struct*) ;

__attribute__((used)) static irqreturn_t enic_isr_msix_rq(int irq, void *data)
{
 struct napi_struct *napi = data;


 napi_schedule(napi);

 return IRQ_HANDLED;
}
