
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixp2400_msf_parameters {int rx_mode; int tx_mode; int rxclk01_multiplier; int rxclk23_multiplier; int txclk01_multiplier; int txclk23_multiplier; } ;


 int IXP2000_MSF_CLK_CNTRL ;
 int IXP2400_RX_MODE_WIDTH_MASK ;
 int IXP2400_TX_MODE_WIDTH_MASK ;
 int ixp2000_reg_read (int ) ;
 int ixp2000_reg_write (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void ixp2400_pll_init(struct ixp2400_msf_parameters *mp)
{
 int rx_dual_clock;
 int tx_dual_clock;
 u32 value;





 rx_dual_clock = !!(mp->rx_mode & IXP2400_RX_MODE_WIDTH_MASK);
 tx_dual_clock = !!(mp->tx_mode & IXP2400_TX_MODE_WIDTH_MASK);




 value = ixp2000_reg_read(IXP2000_MSF_CLK_CNTRL);




 value |= 0x0000f0f0;
 ixp2000_reg_write(IXP2000_MSF_CLK_CNTRL, value);




 value &= ~0x03000000;
 value |= (rx_dual_clock << 24) | (tx_dual_clock << 25);




 value &= ~0x00ff0000;
 value |= mp->rxclk01_multiplier << 16;
 value |= mp->rxclk23_multiplier << 18;
 value |= mp->txclk01_multiplier << 20;
 value |= mp->txclk23_multiplier << 22;




 ixp2000_reg_write(IXP2000_MSF_CLK_CNTRL, value);




 value &= ~(0x00005000 | rx_dual_clock << 13 | tx_dual_clock << 15);
 ixp2000_reg_write(IXP2000_MSF_CLK_CNTRL, value);




 value &= ~(0x00000050 | rx_dual_clock << 5 | tx_dual_clock << 7);
 ixp2000_reg_write(IXP2000_MSF_CLK_CNTRL, value);






 udelay(100);
}
