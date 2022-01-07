
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {scalar_t__ CNTR; } ;


 TYPE_1__* DMA (struct Scsi_Host*) ;
 int IRQ_AMIGA_PORTS ;
 int a3000_intr ;
 int free_irq (int ,int ) ;
 int release_mem_region (int,int) ;
 int wd33c93_release () ;

__attribute__((used)) static int a3000_release(struct Scsi_Host *instance)
{
    wd33c93_release();
    DMA(instance)->CNTR = 0;
    release_mem_region(0xDD0000, 256);
    free_irq(IRQ_AMIGA_PORTS, a3000_intr);
    return 1;
}
