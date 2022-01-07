
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct emac_priv {TYPE_1__* ndev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int EMAC_CTRL_EWCTL ;
 int EMAC_CTRL_EWINTTCNT ;
 int EMAC_EMCONTROL ;
 int EMAC_FIFOCONTROL ;
 int EMAC_MACCONFIG ;
 int EMAC_MACCONTROL ;
 int EMAC_MACINTSTATMASKED ;
 int EMAC_MACINTSTATRAW ;
 int EMAC_MACINVECTOR ;
 int EMAC_MACSTATUS ;
 int EMAC_NETOCTETS ;
 int EMAC_RXALIGNCODEERRORS ;
 int EMAC_RXBCASTFRAMES ;
 int EMAC_RXCONTROL ;
 int EMAC_RXCRCERRORS ;
 int EMAC_RXDMAOVERRUNS ;
 int EMAC_RXFILTERED ;
 int EMAC_RXFRAGMENTS ;
 int EMAC_RXGOODFRAMES ;
 int EMAC_RXHDP (int ) ;
 int EMAC_RXIDVER ;
 int EMAC_RXINTMASKSET ;
 int EMAC_RXINTSTATMASKED ;
 int EMAC_RXINTSTATRAW ;
 int EMAC_RXJABBER ;
 int EMAC_RXMAXLEN ;
 int EMAC_RXMBPENABLE ;
 int EMAC_RXMCASTFRAMES ;
 int EMAC_RXMOFOVERRUNS ;
 int EMAC_RXOCTETS ;
 int EMAC_RXOVERSIZED ;
 int EMAC_RXPAUSEFRAMES ;
 int EMAC_RXQOSFILTERED ;
 int EMAC_RXSOFOVERRUNS ;
 int EMAC_RXUNDERSIZED ;
 int EMAC_RXUNICASTSET ;
 int EMAC_TXBCASTFRAMES ;
 int EMAC_TXCARRIERSENSE ;
 int EMAC_TXCOLLISION ;
 int EMAC_TXCONTROL ;
 int EMAC_TXDEFERRED ;
 int EMAC_TXEXCESSIVECOLL ;
 int EMAC_TXGOODFRAMES ;
 int EMAC_TXHDP (int ) ;
 int EMAC_TXIDVER ;
 int EMAC_TXINTMASKSET ;
 int EMAC_TXINTSTATMASKED ;
 int EMAC_TXINTSTATRAW ;
 int EMAC_TXLATECOLL ;
 int EMAC_TXMCASTFRAMES ;
 int EMAC_TXMULTICOLL ;
 int EMAC_TXOCTETS ;
 int EMAC_TXPAUSEFRAMES ;
 int EMAC_TXSINGLECOLL ;
 int EMAC_TXUNDERRUN ;
 int dev_info (struct device*,char*,...) ;
 int emac_ctrl_read (int ) ;
 scalar_t__ emac_read (int ) ;

__attribute__((used)) static void emac_dump_regs(struct emac_priv *priv)
{
 struct device *emac_dev = &priv->ndev->dev;


 dev_info(emac_dev, "EMAC Basic registers\n");
 dev_info(emac_dev, "EMAC: EWCTL: %08X, EWINTTCNT: %08X\n",
  emac_ctrl_read(EMAC_CTRL_EWCTL),
  emac_ctrl_read(EMAC_CTRL_EWINTTCNT));
 dev_info(emac_dev, "EMAC: TXID: %08X %s, RXID: %08X %s\n",
  emac_read(EMAC_TXIDVER),
  ((emac_read(EMAC_TXCONTROL)) ? "enabled" : "disabled"),
  emac_read(EMAC_RXIDVER),
  ((emac_read(EMAC_RXCONTROL)) ? "enabled" : "disabled"));
 dev_info(emac_dev, "EMAC: TXIntRaw:%08X, TxIntMasked: %08X, " "TxIntMasSet: %08X\n", emac_read(EMAC_TXINTSTATRAW),

  emac_read(EMAC_TXINTSTATMASKED), emac_read(EMAC_TXINTMASKSET));
 dev_info(emac_dev, "EMAC: RXIntRaw:%08X, RxIntMasked: %08X, " "RxIntMasSet: %08X\n", emac_read(EMAC_RXINTSTATRAW),

  emac_read(EMAC_RXINTSTATMASKED), emac_read(EMAC_RXINTMASKSET));
 dev_info(emac_dev, "EMAC: MacIntRaw:%08X, MacIntMasked: %08X, " "MacInVector=%08X\n", emac_read(EMAC_MACINTSTATRAW),

  emac_read(EMAC_MACINTSTATMASKED), emac_read(EMAC_MACINVECTOR));
 dev_info(emac_dev, "EMAC: EmuControl:%08X, FifoControl: %08X\n",
  emac_read(EMAC_EMCONTROL), emac_read(EMAC_FIFOCONTROL));
 dev_info(emac_dev, "EMAC: MBPEnable:%08X, RXUnicastSet: %08X, " "RXMaxLen=%08X\n", emac_read(EMAC_RXMBPENABLE),

  emac_read(EMAC_RXUNICASTSET), emac_read(EMAC_RXMAXLEN));
 dev_info(emac_dev, "EMAC: MacControl:%08X, MacStatus: %08X, " "MacConfig=%08X\n", emac_read(EMAC_MACCONTROL),

  emac_read(EMAC_MACSTATUS), emac_read(EMAC_MACCONFIG));
 dev_info(emac_dev, "EMAC: TXHDP[0]:%08X, RXHDP[0]: %08X\n",
  emac_read(EMAC_TXHDP(0)), emac_read(EMAC_RXHDP(0)));
 dev_info(emac_dev, "EMAC Statistics\n");
 dev_info(emac_dev, "EMAC: rx_good_frames:%d\n",
  emac_read(EMAC_RXGOODFRAMES));
 dev_info(emac_dev, "EMAC: rx_broadcast_frames:%d\n",
  emac_read(EMAC_RXBCASTFRAMES));
 dev_info(emac_dev, "EMAC: rx_multicast_frames:%d\n",
  emac_read(EMAC_RXMCASTFRAMES));
 dev_info(emac_dev, "EMAC: rx_pause_frames:%d\n",
  emac_read(EMAC_RXPAUSEFRAMES));
 dev_info(emac_dev, "EMAC: rx_crcerrors:%d\n",
  emac_read(EMAC_RXCRCERRORS));
 dev_info(emac_dev, "EMAC: rx_align_code_errors:%d\n",
  emac_read(EMAC_RXALIGNCODEERRORS));
 dev_info(emac_dev, "EMAC: rx_oversized_frames:%d\n",
  emac_read(EMAC_RXOVERSIZED));
 dev_info(emac_dev, "EMAC: rx_jabber_frames:%d\n",
  emac_read(EMAC_RXJABBER));
 dev_info(emac_dev, "EMAC: rx_undersized_frames:%d\n",
  emac_read(EMAC_RXUNDERSIZED));
 dev_info(emac_dev, "EMAC: rx_fragments:%d\n",
  emac_read(EMAC_RXFRAGMENTS));
 dev_info(emac_dev, "EMAC: rx_filtered_frames:%d\n",
  emac_read(EMAC_RXFILTERED));
 dev_info(emac_dev, "EMAC: rx_qos_filtered_frames:%d\n",
  emac_read(EMAC_RXQOSFILTERED));
 dev_info(emac_dev, "EMAC: rx_octets:%d\n",
  emac_read(EMAC_RXOCTETS));
 dev_info(emac_dev, "EMAC: tx_goodframes:%d\n",
  emac_read(EMAC_TXGOODFRAMES));
 dev_info(emac_dev, "EMAC: tx_bcastframes:%d\n",
  emac_read(EMAC_TXBCASTFRAMES));
 dev_info(emac_dev, "EMAC: tx_mcastframes:%d\n",
  emac_read(EMAC_TXMCASTFRAMES));
 dev_info(emac_dev, "EMAC: tx_pause_frames:%d\n",
  emac_read(EMAC_TXPAUSEFRAMES));
 dev_info(emac_dev, "EMAC: tx_deferred_frames:%d\n",
  emac_read(EMAC_TXDEFERRED));
 dev_info(emac_dev, "EMAC: tx_collision_frames:%d\n",
  emac_read(EMAC_TXCOLLISION));
 dev_info(emac_dev, "EMAC: tx_single_coll_frames:%d\n",
  emac_read(EMAC_TXSINGLECOLL));
 dev_info(emac_dev, "EMAC: tx_mult_coll_frames:%d\n",
  emac_read(EMAC_TXMULTICOLL));
 dev_info(emac_dev, "EMAC: tx_excessive_collisions:%d\n",
  emac_read(EMAC_TXEXCESSIVECOLL));
 dev_info(emac_dev, "EMAC: tx_late_collisions:%d\n",
  emac_read(EMAC_TXLATECOLL));
 dev_info(emac_dev, "EMAC: tx_underrun:%d\n",
  emac_read(EMAC_TXUNDERRUN));
 dev_info(emac_dev, "EMAC: tx_carrier_sense_errors:%d\n",
  emac_read(EMAC_TXCARRIERSENSE));
 dev_info(emac_dev, "EMAC: tx_octets:%d\n",
  emac_read(EMAC_TXOCTETS));
 dev_info(emac_dev, "EMAC: net_octets:%d\n",
  emac_read(EMAC_NETOCTETS));
 dev_info(emac_dev, "EMAC: rx_sof_overruns:%d\n",
  emac_read(EMAC_RXSOFOVERRUNS));
 dev_info(emac_dev, "EMAC: rx_mof_overruns:%d\n",
  emac_read(EMAC_RXMOFOVERRUNS));
 dev_info(emac_dev, "EMAC: rx_dma_overruns:%d\n",
  emac_read(EMAC_RXDMAOVERRUNS));
}
