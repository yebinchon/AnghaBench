
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {scalar_t__ ctl_addr; } ;
struct TYPE_5__ {scalar_t__ dma_base; TYPE_1__ io_ports; } ;
typedef TYPE_2__ ide_hwif_t ;


 int eieio () ;
 int in_be32 (void*) ;
 int out_be32 (void*,int ) ;

__attribute__((used)) static void scc_write_devctl(ide_hwif_t *hwif, u8 ctl)
{
 out_be32((void *)hwif->io_ports.ctl_addr, ctl);
 eieio();
 in_be32((void *)(hwif->dma_base + 0x01c));
 eieio();
}
