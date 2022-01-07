
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int irq_addr; } ;
struct TYPE_5__ {TYPE_1__ io_ports; } ;
typedef TYPE_2__ ide_hwif_t ;


 unsigned char GAYLE_IRQ_IDE ;
 unsigned char z_readb (int ) ;

__attribute__((used)) static int gayle_test_irq(ide_hwif_t *hwif)
{
    unsigned char ch;

    ch = z_readb(hwif->io_ports.irq_addr);
    if (!(ch & GAYLE_IRQ_IDE))
 return 0;
    return 1;
}
