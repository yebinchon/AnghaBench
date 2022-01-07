
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehea_port_res {int napi; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int napi_schedule (int *) ;

__attribute__((used)) static irqreturn_t ehea_recv_irq_handler(int irq, void *param)
{
 struct ehea_port_res *pr = param;

 napi_schedule(&pr->napi);

 return IRQ_HANDLED;
}
