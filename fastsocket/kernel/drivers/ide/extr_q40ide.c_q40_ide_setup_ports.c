
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* ctl_addr; void* status_addr; void* device_addr; void* lbah_addr; void* lbam_addr; void* lbal_addr; void* nsect_addr; void* error_addr; int data_addr; } ;
struct ide_hw {int irq; TYPE_1__ io_ports; } ;


 void* Q40_ISA_IO_B (unsigned long) ;
 int Q40_ISA_IO_W (unsigned long) ;
 int memset (struct ide_hw*,int ,int) ;

__attribute__((used)) static void q40_ide_setup_ports(struct ide_hw *hw, unsigned long base, int irq)
{
 memset(hw, 0, sizeof(*hw));


 hw->io_ports.data_addr = Q40_ISA_IO_W(base);
 hw->io_ports.error_addr = Q40_ISA_IO_B(base + 1);
 hw->io_ports.nsect_addr = Q40_ISA_IO_B(base + 2);
 hw->io_ports.lbal_addr = Q40_ISA_IO_B(base + 3);
 hw->io_ports.lbam_addr = Q40_ISA_IO_B(base + 4);
 hw->io_ports.lbah_addr = Q40_ISA_IO_B(base + 5);
 hw->io_ports.device_addr = Q40_ISA_IO_B(base + 6);
 hw->io_ports.status_addr = Q40_ISA_IO_B(base + 7);
 hw->io_ports.ctl_addr = Q40_ISA_IO_B(base + 0x206);

 hw->irq = irq;
}
