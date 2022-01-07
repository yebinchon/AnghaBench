
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct be_dma_mem {int dma; scalar_t__ va; int size; } ;
struct be_adapter {TYPE_1__* pdev; struct be_dma_mem stats_cmd; } ;
struct TYPE_2__ {int dev; } ;


 int dma_free_coherent (int *,int ,scalar_t__,int ) ;

__attribute__((used)) static void be_stats_cleanup(struct be_adapter *adapter)
{
 struct be_dma_mem *cmd = &adapter->stats_cmd;

 if (cmd->va)
  dma_free_coherent(&adapter->pdev->dev, cmd->size,
      cmd->va, cmd->dma);
}
