
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbmacdma {int * sbdma_remptr; int * sbdma_addptr; int sbdma_config0; int sbdma_dscrbase; int sbdma_config1; } ;


 int __raw_writeq (int ,int ) ;

__attribute__((used)) static void sbdma_channel_stop(struct sbmacdma *d)
{




 __raw_writeq(0, d->sbdma_config1);

 __raw_writeq(0, d->sbdma_dscrbase);

 __raw_writeq(0, d->sbdma_config0);





 d->sbdma_addptr = ((void*)0);
 d->sbdma_remptr = ((void*)0);
}
