
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u16 ;
struct LD_LOAD_BALANCE_INFO {int * scsi_pending_cmds; int * raid1DevHandle; } ;
struct IO_REQUEST_INFO {int numBlocks; int ldStartBlock; int devHandle; } ;


 int atomic_inc (int *) ;
 size_t megasas_get_best_arm (struct LD_LOAD_BALANCE_INFO*,size_t,int ,int ) ;

u16 get_updated_dev_handle(struct LD_LOAD_BALANCE_INFO *lbInfo,
      struct IO_REQUEST_INFO *io_info)
{
 u8 arm, old_arm;
 u16 devHandle;

 old_arm = lbInfo->raid1DevHandle[0] == io_info->devHandle ? 0 : 1;


 arm = megasas_get_best_arm(lbInfo, old_arm, io_info->ldStartBlock,
        io_info->numBlocks);
 devHandle = lbInfo->raid1DevHandle[arm];
 atomic_inc(&lbInfo->scsi_pending_cmds[arm]);

 return devHandle;
}
