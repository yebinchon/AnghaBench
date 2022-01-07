
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_4__ {int membase; } ;
struct uart_amba_port {TYPE_2__ port; int dev; TYPE_1__* data; } ;
struct TYPE_3__ {int (* set_mctrl ) (int ,int ,unsigned int) ;} ;


 int stub1 (int ,int ,unsigned int) ;

__attribute__((used)) static void pl010_set_mctrl(struct uart_port *port, unsigned int mctrl)
{
 struct uart_amba_port *uap = (struct uart_amba_port *)port;

 if (uap->data)
  uap->data->set_mctrl(uap->dev, uap->port.membase, mctrl);
}
