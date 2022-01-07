
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_3__ {int * dev; } ;
struct TYPE_4__ {TYPE_1__ port; } ;


 TYPE_2__* bfin_serial_ports ;
 int bfin_serial_reg ;
 int nr_active_ports ;
 int uart_resume_port (int *,TYPE_1__*) ;

__attribute__((used)) static int bfin_serial_resume(struct platform_device *dev)
{
 int i;

 for (i = 0; i < nr_active_ports; i++) {
  if (bfin_serial_ports[i].port.dev != &dev->dev)
   continue;
  uart_resume_port(&bfin_serial_reg, &bfin_serial_ports[i].port);
 }

 return 0;
}
