
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct sbp2_lu {int shost; int state; scalar_t__ command_block_agent_addr; int ne; } ;
typedef int quadlet_t ;


 scalar_t__ SBP2LU_STATE_IN_RESET ;
 int SBP2_ERR (char*) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ hpsb_node_write (int ,scalar_t__,int *,size_t) ;
 scalar_t__ likely (int) ;
 int scsi_unblock_requests (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void sbp2util_notify_fetch_agent(struct sbp2_lu *lu, u64 offset,
     quadlet_t *data, size_t len)
{


 if (unlikely(atomic_read(&lu->state) == SBP2LU_STATE_IN_RESET))
  return;

 if (hpsb_node_write(lu->ne, lu->command_block_agent_addr + offset,
       data, len))
  SBP2_ERR("sbp2util_notify_fetch_agent failed.");



 if (likely(atomic_read(&lu->state) != SBP2LU_STATE_IN_RESET))
  scsi_unblock_requests(lu->shost);
}
