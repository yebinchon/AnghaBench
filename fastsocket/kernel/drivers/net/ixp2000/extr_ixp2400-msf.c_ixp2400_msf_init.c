
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixp2400_msf_parameters {int rx_poll_ports; int rx_mode; int* rx_channel_mode; int tx_poll_ports; int tx_mode; int* tx_channel_mode; } ;


 scalar_t__ IXP2000_MSF_RX_CONTROL ;
 scalar_t__ IXP2000_MSF_RX_MPHY_POLL_LIMIT ;
 scalar_t__ IXP2000_MSF_RX_UP_CONTROL_0 ;
 scalar_t__ IXP2000_MSF_TX_CONTROL ;
 scalar_t__ IXP2000_MSF_TX_MPHY_POLL_LIMIT ;
 scalar_t__ IXP2000_MSF_TX_UP_CONTROL_0 ;
 scalar_t__ IXP2000_RESET0 ;
 int ixp2000_reg_read (scalar_t__) ;
 int ixp2000_reg_write (scalar_t__,int) ;
 int ixp2400_msf_enable_rx (struct ixp2400_msf_parameters*) ;
 int ixp2400_msf_enable_tx (struct ixp2400_msf_parameters*) ;
 int ixp2400_msf_free_rbuf_entries (struct ixp2400_msf_parameters*) ;
 int ixp2400_pll_init (struct ixp2400_msf_parameters*) ;

void ixp2400_msf_init(struct ixp2400_msf_parameters *mp)
{
 u32 value;
 int i;




 ixp2400_pll_init(mp);




 value = ixp2000_reg_read(IXP2000_RESET0);
 ixp2000_reg_write(IXP2000_RESET0, value | 0x80);
 ixp2000_reg_write(IXP2000_RESET0, value & ~0x80);




 ixp2000_reg_write(IXP2000_MSF_RX_MPHY_POLL_LIMIT, mp->rx_poll_ports - 1);
 ixp2000_reg_write(IXP2000_MSF_RX_CONTROL, mp->rx_mode);
 for (i = 0; i < 4; i++) {
  ixp2000_reg_write(IXP2000_MSF_RX_UP_CONTROL_0 + i,
      mp->rx_channel_mode[i]);
 }
 ixp2400_msf_free_rbuf_entries(mp);
 ixp2400_msf_enable_rx(mp);




 ixp2000_reg_write(IXP2000_MSF_TX_MPHY_POLL_LIMIT, mp->tx_poll_ports - 1);
 ixp2000_reg_write(IXP2000_MSF_TX_CONTROL, mp->tx_mode);
 for (i = 0; i < 4; i++) {
  ixp2000_reg_write(IXP2000_MSF_TX_UP_CONTROL_0 + i,
      mp->tx_channel_mode[i]);
 }
 ixp2400_msf_enable_tx(mp);
}
