
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ioc4_port {int ip_ienb; int ip_ioc4_soft; struct hooks* ip_hooks; } ;
struct hooks {int intr_dma_error; } ;


 int IOC4_OTHER_INTR_TYPE ;
 int IOC4_SIO_INTR_TYPE ;
 int IOC4_W_IES ;
 int write_ireg (int ,int,int ,int ) ;

__attribute__((used)) static void enable_intrs(struct ioc4_port *port, uint32_t mask)
{
 struct hooks *hooks = port->ip_hooks;

 if ((port->ip_ienb & mask) != mask) {
  write_ireg(port->ip_ioc4_soft, mask, IOC4_W_IES,
      IOC4_SIO_INTR_TYPE);
  port->ip_ienb |= mask;
 }

 if (port->ip_ienb)
  write_ireg(port->ip_ioc4_soft, hooks->intr_dma_error,
    IOC4_W_IES, IOC4_OTHER_INTR_TYPE);
}
