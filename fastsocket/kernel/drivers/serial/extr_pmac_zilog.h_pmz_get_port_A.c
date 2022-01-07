
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_pmac_port {int flags; struct uart_pmac_port* mate; } ;


 int PMACZILOG_FLAG_IS_CHANNEL_A ;

__attribute__((used)) static inline struct uart_pmac_port *pmz_get_port_A(struct uart_pmac_port *uap)
{
 if (uap->flags & PMACZILOG_FLAG_IS_CHANNEL_A)
  return uap;
 return uap->mate;
}
