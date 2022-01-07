
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Scsi_Host {int base; } ;
struct TYPE_2__ {scalar_t__ CNTR; } ;


 TYPE_1__* DMA (struct Scsi_Host*) ;
 int IRQ_AMIGA_PORTS ;
 int ZTWO_PADDR (int ) ;
 int free_irq (int ,struct Scsi_Host*) ;
 int release_mem_region (int ,int) ;
 int wd33c93_release () ;

int gvp11_release(struct Scsi_Host *instance)
{






    return 1;
}
