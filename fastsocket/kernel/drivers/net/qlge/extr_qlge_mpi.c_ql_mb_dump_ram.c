
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct ql_adapter {int ndev; } ;
struct mbox_params {int in_count; int out_count; scalar_t__* mbox_out; void** mbox_in; } ;


 int EIO ;
 void* LSW (int ) ;
 void* MB_CMD_DUMP_RISC_RAM ;
 scalar_t__ MB_CMD_STS_GOOD ;
 int MSD (int ) ;
 void* MSW (int ) ;
 int drv ;
 int memset (struct mbox_params*,int ,int) ;
 int netif_err (struct ql_adapter*,int ,int ,char*) ;
 int ql_mailbox_command (struct ql_adapter*,struct mbox_params*) ;

int ql_mb_dump_ram(struct ql_adapter *qdev, u64 req_dma, u32 addr,
 u32 size)
{
 int status = 0;
 struct mbox_params mbc;
 struct mbox_params *mbcp = &mbc;

 memset(mbcp, 0, sizeof(struct mbox_params));

 mbcp->in_count = 9;
 mbcp->out_count = 1;

 mbcp->mbox_in[0] = MB_CMD_DUMP_RISC_RAM;
 mbcp->mbox_in[1] = LSW(addr);
 mbcp->mbox_in[2] = MSW(req_dma);
 mbcp->mbox_in[3] = LSW(req_dma);
 mbcp->mbox_in[4] = MSW(size);
 mbcp->mbox_in[5] = LSW(size);
 mbcp->mbox_in[6] = MSW(MSD(req_dma));
 mbcp->mbox_in[7] = LSW(MSD(req_dma));
 mbcp->mbox_in[8] = MSW(addr);


 status = ql_mailbox_command(qdev, mbcp);
 if (status)
  return status;

 if (mbcp->mbox_out[0] != MB_CMD_STS_GOOD) {
  netif_err(qdev, drv, qdev->ndev, "Failed to dump risc RAM.\n");
  status = -EIO;
 }
 return status;
}
