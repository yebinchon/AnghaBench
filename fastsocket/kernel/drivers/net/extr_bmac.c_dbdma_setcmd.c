
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dbdma_cmd {int res_count; int xfer_status; int cmd_dep; int phy_addr; int req_count; int command; } ;


 int out_le16 (int *,unsigned int) ;
 int out_le32 (int *,unsigned long) ;

__attribute__((used)) static void
dbdma_setcmd(volatile struct dbdma_cmd *cp,
      unsigned short cmd, unsigned count, unsigned long addr,
      unsigned long cmd_dep)
{
 out_le16(&cp->command, cmd);
 out_le16(&cp->req_count, count);
 out_le32(&cp->phy_addr, addr);
 out_le32(&cp->cmd_dep, cmd_dep);
 out_le16(&cp->xfer_status, 0);
 out_le16(&cp->res_count, 0);
}
