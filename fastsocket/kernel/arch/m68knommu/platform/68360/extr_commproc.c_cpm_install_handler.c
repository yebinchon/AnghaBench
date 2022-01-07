
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_FLG_LOCK ;
 int request_irq (int,void (*) (),int ,char*,void*) ;

void
cpm_install_handler(int vec, void (*handler)(), void *dev_id)
{

 request_irq(vec, handler, IRQ_FLG_LOCK, "timer", dev_id);
}
