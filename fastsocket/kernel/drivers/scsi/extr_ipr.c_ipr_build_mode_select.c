
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct TYPE_2__ {void** cdb; int flags_hi; int request_type; } ;
struct ipr_ioarcb {TYPE_1__ cmd_pkt; int res_handle; } ;
struct ipr_cmnd {struct ipr_ioarcb ioarcb; } ;
typedef int dma_addr_t ;
typedef int __be32 ;


 int IPR_FLAGS_HI_WRITE_NOT_READ ;
 int IPR_IOADL_FLAGS_WRITE_LAST ;
 int IPR_RQTYPE_SCSICDB ;
 void* MODE_SELECT ;
 int ipr_init_ioadl (struct ipr_cmnd*,int ,void*,int ) ;

__attribute__((used)) static void ipr_build_mode_select(struct ipr_cmnd *ipr_cmd,
      __be32 res_handle, u8 parm,
      dma_addr_t dma_addr, u8 xfer_len)
{
 struct ipr_ioarcb *ioarcb = &ipr_cmd->ioarcb;

 ioarcb->res_handle = res_handle;
 ioarcb->cmd_pkt.request_type = IPR_RQTYPE_SCSICDB;
 ioarcb->cmd_pkt.flags_hi |= IPR_FLAGS_HI_WRITE_NOT_READ;
 ioarcb->cmd_pkt.cdb[0] = MODE_SELECT;
 ioarcb->cmd_pkt.cdb[1] = parm;
 ioarcb->cmd_pkt.cdb[4] = xfer_len;

 ipr_init_ioadl(ipr_cmd, dma_addr, xfer_len, IPR_IOADL_FLAGS_WRITE_LAST);
}
