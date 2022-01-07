
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_connect_and_offload_out {int connection_handle; } ;
struct tcp_connect_and_offload_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct iscsi_endpoint {struct beiscsi_endpoint* dd_data; } ;
struct TYPE_2__ {int pdev; } ;
struct beiscsi_hba {TYPE_1__ ctrl; struct iscsi_endpoint** ep_array; } ;
struct beiscsi_endpoint {int ep_cid; int cid_vld; int fw_handle; struct beiscsi_hba* phba; } ;
struct be_dma_mem {int size; int dma; int * va; } ;


 int BEISCSI_LOG_CONFIG ;
 int BEISCSI_LOG_MBOX ;
 size_t BE_GET_CRI_FROM_CID (int) ;
 int EAGAIN ;
 int EBUSY ;
 int ENOMEM ;
 int KERN_ERR ;
 int KERN_INFO ;
 int beiscsi_free_ep (struct beiscsi_endpoint*) ;
 int beiscsi_get_cid (struct beiscsi_hba*) ;
 int beiscsi_log (struct beiscsi_hba*,int ,int,char*,...) ;
 int beiscsi_mccq_compl (struct beiscsi_hba*,unsigned int,int *,int *) ;
 int memset (int *,int ,int) ;
 unsigned int mgmt_open_connection (struct beiscsi_hba*,struct sockaddr*,struct beiscsi_endpoint*,struct be_dma_mem*) ;
 int * pci_alloc_consistent (int ,int,int *) ;
 int pci_free_consistent (int ,int,int *,int ) ;

__attribute__((used)) static int beiscsi_open_conn(struct iscsi_endpoint *ep,
        struct sockaddr *src_addr,
        struct sockaddr *dst_addr, int non_blocking)
{
 struct beiscsi_endpoint *beiscsi_ep = ep->dd_data;
 struct beiscsi_hba *phba = beiscsi_ep->phba;
 struct tcp_connect_and_offload_out *ptcpcnct_out;
 struct be_dma_mem nonemb_cmd;
 unsigned int tag;
 int ret = -ENOMEM;

 beiscsi_log(phba, KERN_INFO, BEISCSI_LOG_CONFIG,
      "BS_%d : In beiscsi_open_conn\n");

 beiscsi_ep->ep_cid = beiscsi_get_cid(phba);
 if (beiscsi_ep->ep_cid == 0xFFFF) {
  beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
       "BS_%d : No free cid available\n");
  return ret;
 }

 beiscsi_log(phba, KERN_INFO, BEISCSI_LOG_CONFIG,
      "BS_%d : In beiscsi_open_conn, ep_cid=%d\n",
      beiscsi_ep->ep_cid);

 phba->ep_array[BE_GET_CRI_FROM_CID
         (beiscsi_ep->ep_cid)] = ep;

 beiscsi_ep->cid_vld = 0;
 nonemb_cmd.va = pci_alloc_consistent(phba->ctrl.pdev,
    sizeof(struct tcp_connect_and_offload_in),
    &nonemb_cmd.dma);
 if (nonemb_cmd.va == ((void*)0)) {

  beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
       "BS_%d : Failed to allocate memory for"
       " mgmt_open_connection\n");

  beiscsi_free_ep(beiscsi_ep);
  return -ENOMEM;
 }
 nonemb_cmd.size = sizeof(struct tcp_connect_and_offload_in);
 memset(nonemb_cmd.va, 0, nonemb_cmd.size);
 tag = mgmt_open_connection(phba, dst_addr, beiscsi_ep, &nonemb_cmd);
 if (tag <= 0) {
  beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
       "BS_%d : mgmt_open_connection Failed for cid=%d\n",
       beiscsi_ep->ep_cid);

  pci_free_consistent(phba->ctrl.pdev, nonemb_cmd.size,
        nonemb_cmd.va, nonemb_cmd.dma);
  beiscsi_free_ep(beiscsi_ep);
  return -EAGAIN;
 }

 ret = beiscsi_mccq_compl(phba, tag, ((void*)0), nonemb_cmd.va);
 if (ret) {
  beiscsi_log(phba, KERN_ERR,
       BEISCSI_LOG_CONFIG | BEISCSI_LOG_MBOX,
       "BS_%d : mgmt_open_connection Failed");

  pci_free_consistent(phba->ctrl.pdev, nonemb_cmd.size,
       nonemb_cmd.va, nonemb_cmd.dma);
  beiscsi_free_ep(beiscsi_ep);
  return -EBUSY;
 }

 ptcpcnct_out = (struct tcp_connect_and_offload_out *)nonemb_cmd.va;
 beiscsi_ep = ep->dd_data;
 beiscsi_ep->fw_handle = ptcpcnct_out->connection_handle;
 beiscsi_ep->cid_vld = 1;
 beiscsi_log(phba, KERN_INFO, BEISCSI_LOG_CONFIG,
      "BS_%d : mgmt_open_connection Success\n");

 pci_free_consistent(phba->ctrl.pdev, nonemb_cmd.size,
       nonemb_cmd.va, nonemb_cmd.dma);
 return 0;
}
