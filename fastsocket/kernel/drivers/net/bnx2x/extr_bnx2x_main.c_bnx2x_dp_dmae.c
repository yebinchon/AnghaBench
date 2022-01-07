
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dmae_command {int opcode; int src_addr_lo; int dst_addr_lo; int comp_val; int comp_addr_lo; int comp_addr_hi; int len; int src_addr_hi; int dst_addr_hi; } ;
struct bnx2x {int dummy; } ;




 int DMAE_CMD_SRC_PCI ;
 int DMAE_COMMAND_DST ;
 int DMAE_COMMAND_SRC ;
 int DP (int,char*,int,int,...) ;

__attribute__((used)) static void bnx2x_dp_dmae(struct bnx2x *bp,
     struct dmae_command *dmae, int msglvl)
{
 u32 src_type = dmae->opcode & DMAE_COMMAND_SRC;
 int i;

 switch (dmae->opcode & DMAE_COMMAND_DST) {
 case 128:
  if (src_type == DMAE_CMD_SRC_PCI)
   DP(msglvl, "DMAE: opcode 0x%08x\n"
      "src [%x:%08x], len [%d*4], dst [%x:%08x]\n"
      "comp_addr [%x:%08x], comp_val 0x%08x\n",
      dmae->opcode, dmae->src_addr_hi, dmae->src_addr_lo,
      dmae->len, dmae->dst_addr_hi, dmae->dst_addr_lo,
      dmae->comp_addr_hi, dmae->comp_addr_lo,
      dmae->comp_val);
  else
   DP(msglvl, "DMAE: opcode 0x%08x\n"
      "src [%08x], len [%d*4], dst [%x:%08x]\n"
      "comp_addr [%x:%08x], comp_val 0x%08x\n",
      dmae->opcode, dmae->src_addr_lo >> 2,
      dmae->len, dmae->dst_addr_hi, dmae->dst_addr_lo,
      dmae->comp_addr_hi, dmae->comp_addr_lo,
      dmae->comp_val);
  break;
 case 129:
  if (src_type == DMAE_CMD_SRC_PCI)
   DP(msglvl, "DMAE: opcode 0x%08x\n"
      "src [%x:%08x], len [%d*4], dst_addr [%08x]\n"
      "comp_addr [%x:%08x], comp_val 0x%08x\n",
      dmae->opcode, dmae->src_addr_hi, dmae->src_addr_lo,
      dmae->len, dmae->dst_addr_lo >> 2,
      dmae->comp_addr_hi, dmae->comp_addr_lo,
      dmae->comp_val);
  else
   DP(msglvl, "DMAE: opcode 0x%08x\n"
      "src [%08x], len [%d*4], dst [%08x]\n"
      "comp_addr [%x:%08x], comp_val 0x%08x\n",
      dmae->opcode, dmae->src_addr_lo >> 2,
      dmae->len, dmae->dst_addr_lo >> 2,
      dmae->comp_addr_hi, dmae->comp_addr_lo,
      dmae->comp_val);
  break;
 default:
  if (src_type == DMAE_CMD_SRC_PCI)
   DP(msglvl, "DMAE: opcode 0x%08x\n"
      "src_addr [%x:%08x]  len [%d * 4]  dst_addr [none]\n"
      "comp_addr [%x:%08x]  comp_val 0x%08x\n",
      dmae->opcode, dmae->src_addr_hi, dmae->src_addr_lo,
      dmae->len, dmae->comp_addr_hi, dmae->comp_addr_lo,
      dmae->comp_val);
  else
   DP(msglvl, "DMAE: opcode 0x%08x\n"
      "src_addr [%08x]  len [%d * 4]  dst_addr [none]\n"
      "comp_addr [%x:%08x]  comp_val 0x%08x\n",
      dmae->opcode, dmae->src_addr_lo >> 2,
      dmae->len, dmae->comp_addr_hi, dmae->comp_addr_lo,
      dmae->comp_val);
  break;
 }

 for (i = 0; i < (sizeof(struct dmae_command)/4); i++)
  DP(msglvl, "DMAE RAW [%02d]: 0x%08x\n",
     i, *(((u32 *)dmae) + i));
}
