
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int dummy; } ;


 int IPW_DEBUG_FW (char*) ;
 int IPW_DMA_I_CB_BASE ;
 int IPW_SHARED_SRAM_DMA_CONTROL ;
 int ipw_fw_dma_reset_command_blocks (struct ipw_priv*) ;
 int ipw_write_reg32 (struct ipw_priv*,int ,int ) ;

__attribute__((used)) static int ipw_fw_dma_enable(struct ipw_priv *priv)
{

 IPW_DEBUG_FW(">> :\n");


 ipw_fw_dma_reset_command_blocks(priv);


 ipw_write_reg32(priv, IPW_DMA_I_CB_BASE, IPW_SHARED_SRAM_DMA_CONTROL);

 IPW_DEBUG_FW("<< :\n");
 return 0;
}
