
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ghes {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ghes_proc (struct ghes*) ;

__attribute__((used)) static irqreturn_t ghes_irq_func(int irq, void *data)
{
 struct ghes *ghes = data;
 int rc;

 rc = ghes_proc(ghes);
 if (rc)
  return IRQ_NONE;

 return IRQ_HANDLED;
}
