
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tx_queue {int dummy; } ;
struct rx_queue {int rx_curr_desc; scalar_t__ rx_desc_dma; } ;
struct rx_desc {int dummy; } ;
struct mv643xx_eth_private {int txq_count; int rxq_count; struct rx_queue* rxq; int dev; struct tx_queue* txq; int * phy; } ;
struct ethtool_cmd {int dummy; } ;


 int DO_NOT_FORCE_LINK_FAIL ;
 int FORCE_LINK_PASS ;
 int PORT_CONFIG ;
 int PORT_CONFIG_EXT ;
 int PORT_SERIAL_CONTROL ;
 int RXQ_CURRENT_DESC_PTR (int) ;
 int SERIAL_PORT_ENABLE ;
 int mv643xx_eth_get_settings (int ,struct ethtool_cmd*) ;
 int mv643xx_eth_program_unicast_filter (int ) ;
 int mv643xx_eth_set_settings (int ,struct ethtool_cmd*) ;
 int phy_reset (struct mv643xx_eth_private*) ;
 int rdlp (struct mv643xx_eth_private*,int ) ;
 int rxq_enable (struct rx_queue*) ;
 int tx_set_rate (struct mv643xx_eth_private*,int,int) ;
 int txq_reset_hw_ptr (struct tx_queue*) ;
 int txq_set_fixed_prio_mode (struct tx_queue*) ;
 int txq_set_rate (struct tx_queue*,int,int) ;
 int wrlp (struct mv643xx_eth_private*,int ,int) ;

__attribute__((used)) static void port_start(struct mv643xx_eth_private *mp)
{
 u32 pscr;
 int i;




 if (mp->phy != ((void*)0)) {
  struct ethtool_cmd cmd;

  mv643xx_eth_get_settings(mp->dev, &cmd);
  phy_reset(mp);
  mv643xx_eth_set_settings(mp->dev, &cmd);
 }




 pscr = rdlp(mp, PORT_SERIAL_CONTROL);

 pscr |= SERIAL_PORT_ENABLE;
 wrlp(mp, PORT_SERIAL_CONTROL, pscr);

 pscr |= DO_NOT_FORCE_LINK_FAIL;
 if (mp->phy == ((void*)0))
  pscr |= FORCE_LINK_PASS;
 wrlp(mp, PORT_SERIAL_CONTROL, pscr);




 tx_set_rate(mp, 1000000000, 16777216);
 for (i = 0; i < mp->txq_count; i++) {
  struct tx_queue *txq = mp->txq + i;

  txq_reset_hw_ptr(txq);
  txq_set_rate(txq, 1000000000, 16777216);
  txq_set_fixed_prio_mode(txq);
 }






 wrlp(mp, PORT_CONFIG, 0x02000000);




 wrlp(mp, PORT_CONFIG_EXT, 0x00000000);




 mv643xx_eth_program_unicast_filter(mp->dev);




 for (i = 0; i < mp->rxq_count; i++) {
  struct rx_queue *rxq = mp->rxq + i;
  u32 addr;

  addr = (u32)rxq->rx_desc_dma;
  addr += rxq->rx_curr_desc * sizeof(struct rx_desc);
  wrlp(mp, RXQ_CURRENT_DESC_PTR(i), addr);

  rxq_enable(rxq);
 }
}
