
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans {int dev; } ;
struct iwl_tfd {int num_tbs; } ;
struct iwl_cmd_meta {int dummy; } ;


 int DMA_TO_DEVICE ;
 int IWL_ERR (struct iwl_trans*,char*,int) ;
 int IWL_NUM_OF_TBS ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int iwl_pcie_tfd_get_num_tbs (struct iwl_tfd*) ;
 int iwl_pcie_tfd_tb_get_addr (struct iwl_tfd*,int) ;
 int iwl_pcie_tfd_tb_get_len (struct iwl_tfd*,int) ;

__attribute__((used)) static void iwl_pcie_tfd_unmap(struct iwl_trans *trans,
          struct iwl_cmd_meta *meta,
          struct iwl_tfd *tfd)
{
 int i;
 int num_tbs;


 num_tbs = iwl_pcie_tfd_get_num_tbs(tfd);

 if (num_tbs >= IWL_NUM_OF_TBS) {
  IWL_ERR(trans, "Too many chunks: %i\n", num_tbs);

  return;
 }



 for (i = 1; i < num_tbs; i++)
  dma_unmap_single(trans->dev, iwl_pcie_tfd_tb_get_addr(tfd, i),
     iwl_pcie_tfd_tb_get_len(tfd, i),
     DMA_TO_DEVICE);

 tfd->num_tbs = 0;
}
