
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_queued_cmd {TYPE_1__* dev; int ap; } ;
struct TYPE_2__ {int dma_mode; } ;


 int ata_bmdma_start (struct ata_queued_cmd*) ;
 int ns87415_set_mode (int ,TYPE_1__*,int ) ;

__attribute__((used)) static void ns87415_bmdma_start(struct ata_queued_cmd *qc)
{
 ns87415_set_mode(qc->ap, qc->dev, qc->dev->dma_mode);
 ata_bmdma_start(qc);
}
