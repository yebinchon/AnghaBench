
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qlcnic_pci_info_le {int mac; int tx_max_bw; int tx_min_bw; int default_port; int type; int active; int id; } ;
struct qlcnic_pci_info {int mac; void* tx_max_bw; void* tx_min_bw; void* default_port; void* type; void* active; void* id; } ;
struct TYPE_4__ {size_t* arg; } ;
struct qlcnic_cmd_args {TYPE_1__ req; } ;
struct qlcnic_adapter {TYPE_3__* pdev; TYPE_2__* ahw; } ;
typedef int dma_addr_t ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {scalar_t__ act_pci_func; } ;


 int EIO ;
 int ENOMEM ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 size_t LSD (int ) ;
 size_t MSD (int ) ;
 int QLCNIC_CMD_GET_PCI_INFO ;
 size_t QLCNIC_MAX_PCI_FUNC ;
 int QLCNIC_RCODE_SUCCESS ;
 void* QLCNIC_TYPE_NIC ;
 int dev_err (int *,char*,int) ;
 void* dma_alloc_coherent (int *,size_t,int *,int ) ;
 int dma_free_coherent (int *,size_t,void*,int ) ;
 void* le16_to_cpu (int ) ;
 int memcpy (int ,int ,int ) ;
 int memset (void*,int ,size_t) ;
 int qlcnic_alloc_mbx_args (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int ) ;
 int qlcnic_free_mbx_args (struct qlcnic_cmd_args*) ;
 int qlcnic_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;

int qlcnic_82xx_get_pci_info(struct qlcnic_adapter *adapter,
        struct qlcnic_pci_info *pci_info)
{
 int err = 0, i;
 struct qlcnic_cmd_args cmd;
 dma_addr_t pci_info_dma_t;
 struct qlcnic_pci_info_le *npar;
 void *pci_info_addr;
 size_t npar_size = sizeof(struct qlcnic_pci_info_le);
 size_t pci_size = npar_size * QLCNIC_MAX_PCI_FUNC;

 pci_info_addr = dma_alloc_coherent(&adapter->pdev->dev, pci_size,
   &pci_info_dma_t, GFP_KERNEL);
 if (!pci_info_addr)
  return -ENOMEM;
 memset(pci_info_addr, 0, pci_size);

 npar = pci_info_addr;
 qlcnic_alloc_mbx_args(&cmd, adapter, QLCNIC_CMD_GET_PCI_INFO);
 cmd.req.arg[1] = MSD(pci_info_dma_t);
 cmd.req.arg[2] = LSD(pci_info_dma_t);
 cmd.req.arg[3] = pci_size;
 err = qlcnic_issue_cmd(adapter, &cmd);

 adapter->ahw->act_pci_func = 0;
 if (err == QLCNIC_RCODE_SUCCESS) {
  for (i = 0; i < QLCNIC_MAX_PCI_FUNC; i++, npar++, pci_info++) {
   pci_info->id = le16_to_cpu(npar->id);
   pci_info->active = le16_to_cpu(npar->active);
   pci_info->type = le16_to_cpu(npar->type);
   if (pci_info->type == QLCNIC_TYPE_NIC)
    adapter->ahw->act_pci_func++;
   pci_info->default_port =
    le16_to_cpu(npar->default_port);
   pci_info->tx_min_bw =
    le16_to_cpu(npar->tx_min_bw);
   pci_info->tx_max_bw =
    le16_to_cpu(npar->tx_max_bw);
   memcpy(pci_info->mac, npar->mac, ETH_ALEN);
  }
 } else {
  dev_err(&adapter->pdev->dev,
   "Failed to get PCI Info%d\n", err);
  err = -EIO;
 }

 dma_free_coherent(&adapter->pdev->dev, pci_size, pci_info_addr,
  pci_info_dma_t);
 qlcnic_free_mbx_args(&cmd);

 return err;
}
