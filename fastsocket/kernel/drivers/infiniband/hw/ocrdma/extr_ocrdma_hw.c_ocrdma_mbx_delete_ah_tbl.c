
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct ocrdma_mqe {int dummy; } ;
struct TYPE_5__ {int pa; int * va; } ;
struct TYPE_6__ {TYPE_2__ pbl; int pa; int * va; int size; int ahid; } ;
struct TYPE_4__ {struct pci_dev* pdev; } ;
struct ocrdma_dev {TYPE_3__ av_tbl; TYPE_1__ nic_info; } ;
struct ocrdma_delete_ah_tbl {int ahid; } ;


 int OCRDMA_CMD_DELETE_AH_TBL ;
 int PAGE_SIZE ;
 int dma_free_coherent (int *,int ,int *,int ) ;
 int kfree (struct ocrdma_delete_ah_tbl*) ;
 struct ocrdma_delete_ah_tbl* ocrdma_init_emb_mqe (int ,int) ;
 int ocrdma_mbx_cmd (struct ocrdma_dev*,struct ocrdma_mqe*) ;

__attribute__((used)) static void ocrdma_mbx_delete_ah_tbl(struct ocrdma_dev *dev)
{
 struct ocrdma_delete_ah_tbl *cmd;
 struct pci_dev *pdev = dev->nic_info.pdev;

 if (dev->av_tbl.va == ((void*)0))
  return;

 cmd = ocrdma_init_emb_mqe(OCRDMA_CMD_DELETE_AH_TBL, sizeof(*cmd));
 if (!cmd)
  return;
 cmd->ahid = dev->av_tbl.ahid;

 ocrdma_mbx_cmd(dev, (struct ocrdma_mqe *)cmd);
 dma_free_coherent(&pdev->dev, dev->av_tbl.size, dev->av_tbl.va,
     dev->av_tbl.pa);
 dma_free_coherent(&pdev->dev, PAGE_SIZE, dev->av_tbl.pbl.va,
     dev->av_tbl.pbl.pa);
 kfree(cmd);
}
