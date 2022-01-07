
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct sbp2_lu {int cmd_orb_lock; int * last_orb; int ne; scalar_t__ command_block_agent_addr; } ;
typedef int quadlet_t ;


 int EIO ;
 int SBP2_AGENT_RESET_DATA ;
 scalar_t__ SBP2_AGENT_RESET_OFFSET ;
 int SBP2_ERR (char*) ;
 int flush_scheduled_work () ;
 int hpsb_node_write (int ,scalar_t__,int *,int) ;
 int ntohl (int ) ;
 int sbp2util_node_write_no_wait (int ,scalar_t__,int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int sbp2_agent_reset(struct sbp2_lu *lu, int wait)
{
 quadlet_t data;
 u64 addr;
 int retval;
 unsigned long flags;


 if (wait)
  flush_scheduled_work();

 data = ntohl(SBP2_AGENT_RESET_DATA);
 addr = lu->command_block_agent_addr + SBP2_AGENT_RESET_OFFSET;

 if (wait)
  retval = hpsb_node_write(lu->ne, addr, &data, 4);
 else
  retval = sbp2util_node_write_no_wait(lu->ne, addr, &data, 4);

 if (retval < 0) {
  SBP2_ERR("hpsb_node_write failed.\n");
  return -EIO;
 }


 spin_lock_irqsave(&lu->cmd_orb_lock, flags);
 lu->last_orb = ((void*)0);
 spin_unlock_irqrestore(&lu->cmd_orb_lock, flags);

 return 0;
}
