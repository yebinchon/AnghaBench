
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_session {int dummy; } ;
struct iscsi_bd {int dummy; } ;
struct io_bdt {scalar_t__ bd_valid; int bd_tbl; int bd_tbl_dma; } ;
struct bnx2i_hba {TYPE_1__* pcidev; } ;
struct bnx2i_cmd {struct io_bdt io_tbl; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ISCSI_MAX_BDS_PER_CMD ;
 int KERN_ERR ;
 int dma_alloc_coherent (int *,int,int *,int ) ;
 int iscsi_session_printk (int ,struct iscsi_session*,char*) ;

__attribute__((used)) static int bnx2i_alloc_bdt(struct bnx2i_hba *hba, struct iscsi_session *session,
      struct bnx2i_cmd *cmd)
{
 struct io_bdt *io = &cmd->io_tbl;
 struct iscsi_bd *bd;

 io->bd_tbl = dma_alloc_coherent(&hba->pcidev->dev,
     ISCSI_MAX_BDS_PER_CMD * sizeof(*bd),
     &io->bd_tbl_dma, GFP_KERNEL);
 if (!io->bd_tbl) {
  iscsi_session_printk(KERN_ERR, session, "Could not "
         "allocate bdt.\n");
  return -ENOMEM;
 }
 io->bd_valid = 0;
 return 0;
}
