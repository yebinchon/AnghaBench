
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef void* u32 ;
struct TYPE_3__ {scalar_t__ bd_tbl_dma; } ;
struct TYPE_4__ {int op_code; void* bd_list_addr_hi; void* bd_list_addr_lo; } ;
struct bnx2i_cmd {TYPE_1__ io_tbl; TYPE_2__ req; } ;


 int memset (TYPE_2__*,int,int) ;

__attribute__((used)) static void bnx2i_setup_cmd_wqe_template(struct bnx2i_cmd *cmd)
{
 memset(&cmd->req, 0x00, sizeof(cmd->req));
 cmd->req.op_code = 0xFF;
 cmd->req.bd_list_addr_lo = (u32) cmd->io_tbl.bd_tbl_dma;
 cmd->req.bd_list_addr_hi =
  (u32) ((u64) cmd->io_tbl.bd_tbl_dma >> 32);

}
