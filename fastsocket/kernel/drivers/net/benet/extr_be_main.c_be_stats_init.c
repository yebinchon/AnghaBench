
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lancer_cmd_req_pport_stats {int dummy; } ;
struct be_dma_mem {int size; int * va; int dma; } ;
struct be_cmd_req_get_stats_v1 {int dummy; } ;
struct be_cmd_req_get_stats_v0 {int dummy; } ;
struct be_adapter {TYPE_1__* pdev; struct be_dma_mem stats_cmd; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ BE2_chip (struct be_adapter*) ;
 int GFP_KERNEL ;
 int __GFP_ZERO ;
 int * dma_alloc_coherent (int *,int,int *,int) ;
 scalar_t__ lancer_chip (struct be_adapter*) ;

__attribute__((used)) static int be_stats_init(struct be_adapter *adapter)
{
 struct be_dma_mem *cmd = &adapter->stats_cmd;

 if (lancer_chip(adapter))
  cmd->size = sizeof(struct lancer_cmd_req_pport_stats);
 else if (BE2_chip(adapter))
  cmd->size = sizeof(struct be_cmd_req_get_stats_v0);
 else

  cmd->size = sizeof(struct be_cmd_req_get_stats_v1);

 cmd->va = dma_alloc_coherent(&adapter->pdev->dev, cmd->size, &cmd->dma,
         GFP_KERNEL | __GFP_ZERO);
 if (cmd->va == ((void*)0))
  return -1;
 return 0;
}
