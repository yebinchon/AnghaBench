
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ctl_addr; } ;
struct ide_hw {scalar_t__ irq; TYPE_1__ io_ports; scalar_t__* io_ports_array; } ;


 int CONFIG_H8300_IDE_ALT ;
 scalar_t__ CONFIG_H8300_IDE_BASE ;
 scalar_t__ CONFIG_H8300_IDE_IRQ ;
 scalar_t__ EXT_IRQ0 ;
 int H8300_IDE_GAP ;
 int memset (struct ide_hw*,int ,int) ;

__attribute__((used)) static inline void hw_setup(struct ide_hw *hw)
{
 int i;

 memset(hw, 0, sizeof(*hw));
 for (i = 0; i <= 7; i++)
  hw->io_ports_array[i] = CONFIG_H8300_IDE_BASE + H8300_IDE_GAP*i;
 hw->io_ports.ctl_addr = CONFIG_H8300_IDE_ALT;
 hw->irq = EXT_IRQ0 + CONFIG_H8300_IDE_IRQ;
}
