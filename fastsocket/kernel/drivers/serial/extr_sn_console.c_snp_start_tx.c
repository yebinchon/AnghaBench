
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_5__ {TYPE_1__* sc_ops; } ;
struct TYPE_4__ {int (* sal_wakeup_transmit ) (TYPE_2__*,int ) ;} ;


 int TRANSMIT_BUFFERED ;
 TYPE_2__ sal_console_port ;
 int stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static void snp_start_tx(struct uart_port *port)
{
 if (sal_console_port.sc_ops->sal_wakeup_transmit)
  sal_console_port.sc_ops->sal_wakeup_transmit(&sal_console_port,
            TRANSMIT_BUFFERED);

}
