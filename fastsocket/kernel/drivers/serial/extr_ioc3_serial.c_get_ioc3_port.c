
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dev; } ;
struct ioc3_port {int dummy; } ;
struct ioc3_driver_data {struct ioc3_card** data; } ;
struct ioc3_card {TYPE_1__* ic_port; } ;
struct TYPE_2__ {struct ioc3_port* icp_port; struct uart_port* icp_uart_port; } ;


 int LOGICAL_PORTS ;
 int NOT_PROGRESS () ;
 int PORTS_PER_CARD ;
 size_t Submodule_slot ;
 struct ioc3_driver_data* dev_get_drvdata (int ) ;

__attribute__((used)) static struct ioc3_port *get_ioc3_port(struct uart_port *the_port)
{
 struct ioc3_driver_data *idd = dev_get_drvdata(the_port->dev);
 struct ioc3_card *card_ptr = idd->data[Submodule_slot];
 int ii, jj;

 if (!card_ptr) {
  NOT_PROGRESS();
  return ((void*)0);
 }
 for (ii = 0; ii < PORTS_PER_CARD; ii++) {
  for (jj = 0; jj < LOGICAL_PORTS; jj++) {
   if (the_port == &card_ptr->ic_port[ii].icp_uart_port[jj])
    return card_ptr->ic_port[ii].icp_port;
  }
 }
 NOT_PROGRESS();
 return ((void*)0);
}
