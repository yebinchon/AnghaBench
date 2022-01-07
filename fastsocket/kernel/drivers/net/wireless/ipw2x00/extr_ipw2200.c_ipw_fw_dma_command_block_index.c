
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipw_priv {int dummy; } ;
struct command_block {int dummy; } ;


 int IPW_DEBUG_FW (char*) ;
 int IPW_DEBUG_FW_INFO (char*,int,int) ;
 int IPW_DMA_I_CURRENT_CB ;
 int IPW_SHARED_SRAM_DMA_CONTROL ;
 int ipw_read_reg32 (struct ipw_priv*,int ) ;

__attribute__((used)) static int ipw_fw_dma_command_block_index(struct ipw_priv *priv)
{
 u32 current_cb_address = 0;
 u32 current_cb_index = 0;

 IPW_DEBUG_FW("<< :\n");
 current_cb_address = ipw_read_reg32(priv, IPW_DMA_I_CURRENT_CB);

 current_cb_index = (current_cb_address - IPW_SHARED_SRAM_DMA_CONTROL) /
     sizeof(struct command_block);

 IPW_DEBUG_FW_INFO("Current CB index 0x%x address = 0x%X\n",
     current_cb_index, current_cb_address);

 IPW_DEBUG_FW(">> :\n");
 return current_cb_index;

}
