
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_host {int * ports; scalar_t__* iomap; } ;


 size_t ADMA_MMIO_BAR ;
 scalar_t__ ADMA_MODE_LOCK ;
 unsigned int ADMA_PORTS ;
 int adma_reset_engine (int ) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void adma_host_init(struct ata_host *host, unsigned int chip_id)
{
 unsigned int port_no;


 writeb(7, host->iomap[ADMA_MMIO_BAR] + ADMA_MODE_LOCK);


 for (port_no = 0; port_no < ADMA_PORTS; ++port_no)
  adma_reset_engine(host->ports[port_no]);
}
