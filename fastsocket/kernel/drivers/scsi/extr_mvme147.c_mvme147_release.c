
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int dummy; } ;


 int MVME147_IRQ_SCSI_DMA ;
 int MVME147_IRQ_SCSI_PORT ;
 int free_irq (int ,int ) ;
 int mvme147_intr ;
 int wd33c93_release () ;

int mvme147_release(struct Scsi_Host *instance)
{






    return 1;
}
