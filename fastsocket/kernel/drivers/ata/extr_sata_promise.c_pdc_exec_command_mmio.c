
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_taskfile {scalar_t__ protocol; } ;
struct ata_port {int dummy; } ;


 scalar_t__ ATAPI_PROT_DMA ;
 scalar_t__ ATA_PROT_DMA ;
 int WARN_ON (int) ;
 int ata_sff_exec_command (struct ata_port*,struct ata_taskfile const*) ;

__attribute__((used)) static void pdc_exec_command_mmio(struct ata_port *ap,
      const struct ata_taskfile *tf)
{
 WARN_ON(tf->protocol == ATA_PROT_DMA || tf->protocol == ATAPI_PROT_DMA);
 ata_sff_exec_command(ap, tf);
}
