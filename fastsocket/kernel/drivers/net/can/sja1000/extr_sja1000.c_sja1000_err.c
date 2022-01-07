
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct sk_buff {int protocol; struct net_device* dev; } ;
struct TYPE_5__ {int error_passive; int error_warning; int arbitration_lost; int bus_error; } ;
struct TYPE_6__ {int state; TYPE_2__ can_stats; } ;
struct sja1000_priv {int (* read_reg ) (struct sja1000_priv*,int ) ;TYPE_3__ can; int (* write_reg ) (struct sja1000_priv*,int ,int ) ;} ;
struct net_device_stats {int rx_bytes; int rx_packets; int tx_errors; int rx_errors; int rx_over_errors; } ;
struct TYPE_4__ {int parent; } ;
struct net_device {TYPE_1__ dev; struct net_device_stats stats; } ;
struct can_frame {int can_id; int* data; scalar_t__ can_dlc; } ;
typedef enum can_state { ____Placeholder_can_state } can_state ;


 int CAN_ERR_BUSERROR ;
 int CAN_ERR_BUSOFF ;
 int CAN_ERR_CRTL ;
 int CAN_ERR_CRTL_RX_OVERFLOW ;
 int CAN_ERR_CRTL_RX_PASSIVE ;
 int CAN_ERR_CRTL_RX_WARNING ;
 int CAN_ERR_CRTL_TX_PASSIVE ;
 int CAN_ERR_CRTL_TX_WARNING ;
 scalar_t__ CAN_ERR_DLC ;
 int CAN_ERR_FLAG ;
 int CAN_ERR_LOSTARB ;
 int CAN_ERR_PROT ;
 int CAN_ERR_PROT_BIT ;
 int CAN_ERR_PROT_FORM ;
 int CAN_ERR_PROT_STUFF ;
 int CAN_ERR_PROT_TX ;
 int CAN_ERR_PROT_UNSPEC ;
 int CAN_STATE_BUS_OFF ;
 int CAN_STATE_ERROR_ACTIVE ;
 int CAN_STATE_ERROR_PASSIVE ;
 int CAN_STATE_ERROR_WARNING ;
 int CMD_CDO ;

 int ECC_DIR ;

 int ECC_MASK ;
 int ECC_SEG ;

 int ENOMEM ;
 int ETH_P_CAN ;
 int IRQ_ALI ;
 int IRQ_BEI ;
 int IRQ_DOI ;
 int IRQ_EI ;
 int IRQ_EPI ;
 int REG_ALC ;
 int REG_CMR ;
 int REG_ECC ;
 int REG_RXERR ;
 int REG_TXERR ;
 int SR_BS ;
 int SR_ES ;
 int can_bus_off (struct net_device*) ;
 struct sk_buff* dev_alloc_skb (int) ;
 int dev_dbg (int ,char*) ;
 int htons (int ) ;
 int memset (struct can_frame*,int ,int) ;
 struct sja1000_priv* netdev_priv (struct net_device*) ;
 int netif_rx (struct sk_buff*) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;
 int stub1 (struct sja1000_priv*,int ,int ) ;
 int stub2 (struct sja1000_priv*,int ) ;
 int stub3 (struct sja1000_priv*,int ) ;
 int stub4 (struct sja1000_priv*,int ) ;
 int stub5 (struct sja1000_priv*,int ) ;

__attribute__((used)) static int sja1000_err(struct net_device *dev, uint8_t isrc, uint8_t status)
{
 struct sja1000_priv *priv = netdev_priv(dev);
 struct net_device_stats *stats = &dev->stats;
 struct can_frame *cf;
 struct sk_buff *skb;
 enum can_state state = priv->can.state;
 uint8_t ecc, alc;

 skb = dev_alloc_skb(sizeof(struct can_frame));
 if (skb == ((void*)0))
  return -ENOMEM;
 skb->dev = dev;
 skb->protocol = htons(ETH_P_CAN);
 cf = (struct can_frame *)skb_put(skb, sizeof(struct can_frame));
 memset(cf, 0, sizeof(struct can_frame));
 cf->can_id = CAN_ERR_FLAG;
 cf->can_dlc = CAN_ERR_DLC;

 if (isrc & IRQ_DOI) {

  dev_dbg(dev->dev.parent, "data overrun interrupt\n");
  cf->can_id |= CAN_ERR_CRTL;
  cf->data[1] = CAN_ERR_CRTL_RX_OVERFLOW;
  stats->rx_over_errors++;
  stats->rx_errors++;
  priv->write_reg(priv, REG_CMR, CMD_CDO);
 }

 if (isrc & IRQ_EI) {

  dev_dbg(dev->dev.parent, "error warning interrupt\n");

  if (status & SR_BS) {
   state = CAN_STATE_BUS_OFF;
   cf->can_id |= CAN_ERR_BUSOFF;
   can_bus_off(dev);
  } else if (status & SR_ES) {
   state = CAN_STATE_ERROR_WARNING;
  } else
   state = CAN_STATE_ERROR_ACTIVE;
 }
 if (isrc & IRQ_BEI) {

  priv->can.can_stats.bus_error++;
  stats->rx_errors++;

  ecc = priv->read_reg(priv, REG_ECC);

  cf->can_id |= CAN_ERR_PROT | CAN_ERR_BUSERROR;

  switch (ecc & ECC_MASK) {
  case 130:
   cf->data[2] |= CAN_ERR_PROT_BIT;
   break;
  case 129:
   cf->data[2] |= CAN_ERR_PROT_FORM;
   break;
  case 128:
   cf->data[2] |= CAN_ERR_PROT_STUFF;
   break;
  default:
   cf->data[2] |= CAN_ERR_PROT_UNSPEC;
   cf->data[3] = ecc & ECC_SEG;
   break;
  }

  if ((ecc & ECC_DIR) == 0)
   cf->data[2] |= CAN_ERR_PROT_TX;
 }
 if (isrc & IRQ_EPI) {

  dev_dbg(dev->dev.parent, "error passive interrupt\n");
  if (status & SR_ES)
   state = CAN_STATE_ERROR_PASSIVE;
  else
   state = CAN_STATE_ERROR_ACTIVE;
 }
 if (isrc & IRQ_ALI) {

  dev_dbg(dev->dev.parent, "arbitration lost interrupt\n");
  alc = priv->read_reg(priv, REG_ALC);
  priv->can.can_stats.arbitration_lost++;
  stats->tx_errors++;
  cf->can_id |= CAN_ERR_LOSTARB;
  cf->data[0] = alc & 0x1f;
 }

 if (state != priv->can.state && (state == CAN_STATE_ERROR_WARNING ||
      state == CAN_STATE_ERROR_PASSIVE)) {
  uint8_t rxerr = priv->read_reg(priv, REG_RXERR);
  uint8_t txerr = priv->read_reg(priv, REG_TXERR);
  cf->can_id |= CAN_ERR_CRTL;
  if (state == CAN_STATE_ERROR_WARNING) {
   priv->can.can_stats.error_warning++;
   cf->data[1] = (txerr > rxerr) ?
    CAN_ERR_CRTL_TX_WARNING :
    CAN_ERR_CRTL_RX_WARNING;
  } else {
   priv->can.can_stats.error_passive++;
   cf->data[1] = (txerr > rxerr) ?
    CAN_ERR_CRTL_TX_PASSIVE :
    CAN_ERR_CRTL_RX_PASSIVE;
  }
 }

 priv->can.state = state;

 netif_rx(skb);

 stats->rx_packets++;
 stats->rx_bytes += cf->can_dlc;

 return 0;
}
