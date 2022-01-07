
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skge_hw {int dummy; } ;


 int GM_MC_ADDR_H1 ;
 int GM_MC_ADDR_H2 ;
 int GM_MC_ADDR_H3 ;
 int GM_MC_ADDR_H4 ;
 int GM_RXCR_MCF_ENA ;
 int GM_RXCR_UCF_ENA ;
 int GM_RX_CTRL ;
 int PHY_MARV_INT_MASK ;
 int gm_phy_write (struct skge_hw*,int,int ,int ) ;
 int gma_read16 (struct skge_hw*,int,int ) ;
 int gma_write16 (struct skge_hw*,int,int ,int) ;

__attribute__((used)) static void yukon_reset(struct skge_hw *hw, int port)
{
 gm_phy_write(hw, port, PHY_MARV_INT_MASK, 0);
 gma_write16(hw, port, GM_MC_ADDR_H1, 0);
 gma_write16(hw, port, GM_MC_ADDR_H2, 0);
 gma_write16(hw, port, GM_MC_ADDR_H3, 0);
 gma_write16(hw, port, GM_MC_ADDR_H4, 0);

 gma_write16(hw, port, GM_RX_CTRL,
    gma_read16(hw, port, GM_RX_CTRL)
    | GM_RXCR_UCF_ENA | GM_RXCR_MCF_ENA);
}
