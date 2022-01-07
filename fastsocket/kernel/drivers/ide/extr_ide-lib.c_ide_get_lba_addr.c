
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct ide_taskfile {int lbah; int lbam; int lbal; int device; } ;
struct ide_cmd {struct ide_taskfile hob; struct ide_taskfile tf; } ;



u64 ide_get_lba_addr(struct ide_cmd *cmd, int lba48)
{
 struct ide_taskfile *tf = &cmd->tf;
 u32 high, low;

 low = (tf->lbah << 16) | (tf->lbam << 8) | tf->lbal;
 if (lba48) {
  tf = &cmd->hob;
  high = (tf->lbah << 16) | (tf->lbam << 8) | tf->lbal;
 } else
  high = tf->device & 0xf;

 return ((u64)high << 24) | low;
}
