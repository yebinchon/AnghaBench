
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int SCpnt; } ;
typedef TYPE_1__ AS_Host ;


 int DBG (int ,int ) ;
 int DMAC_MASKREG ;
 int MASK_ON ;
 int acornscsi_dumpdma (TYPE_1__*,char*) ;
 int dmac_clearintr (TYPE_1__*) ;
 int dmac_write (TYPE_1__*,int ,int ) ;

__attribute__((used)) static inline
void acornscsi_dma_stop(AS_Host *host)
{
    dmac_write(host, DMAC_MASKREG, MASK_ON);
    dmac_clearintr(host);




}
