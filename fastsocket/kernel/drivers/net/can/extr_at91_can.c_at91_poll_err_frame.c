
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int tx_errors; int rx_errors; } ;
struct TYPE_5__ {int parent; } ;
struct net_device {TYPE_2__ stats; TYPE_1__ dev; } ;
struct can_frame {int can_id; int * data; } ;
struct TYPE_7__ {int bus_error; } ;
struct TYPE_8__ {TYPE_3__ can_stats; } ;
struct at91_priv {TYPE_4__ can; } ;


 int AT91_IRQ_AERR ;
 int AT91_IRQ_BERR ;
 int AT91_IRQ_CERR ;
 int AT91_IRQ_FERR ;
 int AT91_IRQ_SERR ;
 int CAN_ERR_ACK ;
 int CAN_ERR_BUSERROR ;
 int CAN_ERR_PROT ;
 int CAN_ERR_PROT_BIT ;
 int CAN_ERR_PROT_FORM ;
 int CAN_ERR_PROT_STUFF ;
 int dev_dbg (int ,char*) ;
 struct at91_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void at91_poll_err_frame(struct net_device *dev,
  struct can_frame *cf, u32 reg_sr)
{
 struct at91_priv *priv = netdev_priv(dev);


 if (reg_sr & AT91_IRQ_CERR) {
  dev_dbg(dev->dev.parent, "CERR irq\n");
  dev->stats.rx_errors++;
  priv->can.can_stats.bus_error++;
  cf->can_id |= CAN_ERR_PROT | CAN_ERR_BUSERROR;
 }


 if (reg_sr & AT91_IRQ_SERR) {
  dev_dbg(dev->dev.parent, "SERR irq\n");
  dev->stats.rx_errors++;
  priv->can.can_stats.bus_error++;
  cf->can_id |= CAN_ERR_PROT | CAN_ERR_BUSERROR;
  cf->data[2] |= CAN_ERR_PROT_STUFF;
 }


 if (reg_sr & AT91_IRQ_AERR) {
  dev_dbg(dev->dev.parent, "AERR irq\n");
  dev->stats.tx_errors++;
  cf->can_id |= CAN_ERR_ACK;
 }


 if (reg_sr & AT91_IRQ_FERR) {
  dev_dbg(dev->dev.parent, "FERR irq\n");
  dev->stats.rx_errors++;
  priv->can.can_stats.bus_error++;
  cf->can_id |= CAN_ERR_PROT | CAN_ERR_BUSERROR;
  cf->data[2] |= CAN_ERR_PROT_FORM;
 }


 if (reg_sr & AT91_IRQ_BERR) {
  dev_dbg(dev->dev.parent, "BERR irq\n");
  dev->stats.tx_errors++;
  priv->can.can_stats.bus_error++;
  cf->can_id |= CAN_ERR_PROT | CAN_ERR_BUSERROR;
  cf->data[2] |= CAN_ERR_PROT_BIT;
 }
}
