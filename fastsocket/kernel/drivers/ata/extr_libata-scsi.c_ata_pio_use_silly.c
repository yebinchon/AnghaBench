
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int flags; } ;


 int ATA_FLAG_PIO_DMA ;

__attribute__((used)) static inline int ata_pio_use_silly(struct ata_port *ap)
{
 return (ap->flags & ATA_FLAG_PIO_DMA);
}
