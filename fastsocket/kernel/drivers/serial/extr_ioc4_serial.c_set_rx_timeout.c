
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ioc4_port {int ip_rx_timeout; int ip_baud; int ip_sscr; TYPE_1__* ip_serial_regs; } ;
struct TYPE_2__ {int srtr; int sscr; } ;


 int IOC4_SRTR_CNT ;
 int IOC4_SRTR_HZ ;
 int IOC4_SSCR_RX_THRESHOLD ;
 int writel (int,int *) ;

__attribute__((used)) static inline int set_rx_timeout(struct ioc4_port *port, int timeout)
{
 int threshold;

 port->ip_rx_timeout = timeout;
 threshold = timeout * port->ip_baud / 4000;
 if (threshold == 0)
  threshold = 1;

 if ((unsigned)threshold > (unsigned)IOC4_SSCR_RX_THRESHOLD)
  return 1;

 port->ip_sscr &= ~IOC4_SSCR_RX_THRESHOLD;
 port->ip_sscr |= threshold;

 writel(port->ip_sscr, &port->ip_serial_regs->sscr);




 timeout = timeout * IOC4_SRTR_HZ / 100;
 if (timeout > IOC4_SRTR_CNT)
  timeout = IOC4_SRTR_CNT;

 writel(timeout, &port->ip_serial_regs->srtr);
 return 0;
}
