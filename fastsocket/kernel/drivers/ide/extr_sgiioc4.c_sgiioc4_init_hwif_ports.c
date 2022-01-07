
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long ctl_addr; unsigned long irq_addr; } ;
struct ide_hw {unsigned long* io_ports_array; TYPE_1__ io_ports; } ;



__attribute__((used)) static void sgiioc4_init_hwif_ports(struct ide_hw *hw,
        unsigned long data_port,
        unsigned long ctrl_port,
        unsigned long irq_port)
{
 unsigned long reg = data_port;
 int i;


 for (i = 0; i <= 7; i++)
  hw->io_ports_array[i] = reg + i * 4;

 hw->io_ports.ctl_addr = ctrl_port;
 hw->io_ports.irq_addr = irq_port;
}
