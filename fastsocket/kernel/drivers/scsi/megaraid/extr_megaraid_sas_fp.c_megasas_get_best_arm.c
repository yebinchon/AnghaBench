
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct LD_LOAD_BALANCE_INFO {scalar_t__* last_accessed_block; int * scsi_pending_cmds; } ;


 scalar_t__ ABS_DIFF (scalar_t__,scalar_t__) ;
 scalar_t__ atomic_read (int *) ;

u8 megasas_get_best_arm(struct LD_LOAD_BALANCE_INFO *lbInfo, u8 arm, u64 block,
   u32 count)
{
 u16 pend0, pend1;
 u64 diff0, diff1;
 u8 bestArm;


 pend0 = atomic_read(&lbInfo->scsi_pending_cmds[0]);
 pend1 = atomic_read(&lbInfo->scsi_pending_cmds[1]);


 diff0 = ABS_DIFF(block, lbInfo->last_accessed_block[0]);
 diff1 = ABS_DIFF(block, lbInfo->last_accessed_block[1]);
 bestArm = (diff0 <= diff1 ? 0 : 1);


 if ((bestArm == arm && pend0 > pend1 + 4) ||
     (bestArm != arm && pend1 > pend0 + 4))
  bestArm ^= 1;


 lbInfo->last_accessed_block[bestArm] = block + count - 1;

 return bestArm;
}
