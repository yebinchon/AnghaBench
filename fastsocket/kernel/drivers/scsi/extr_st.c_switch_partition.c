
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_partstat {scalar_t__ last_block_visited; int last_block_valid; } ;
struct scsi_tape {size_t partition; size_t new_partition; struct st_partstat* ps; } ;


 int set_location (struct scsi_tape*,scalar_t__,size_t,int) ;

__attribute__((used)) static int switch_partition(struct scsi_tape *STp)
{
 struct st_partstat *STps;

 if (STp->partition == STp->new_partition)
  return 0;
 STps = &(STp->ps[STp->new_partition]);
 if (!STps->last_block_valid)
  STps->last_block_visited = 0;
 return set_location(STp, STps->last_block_visited, STp->new_partition, 1);
}
