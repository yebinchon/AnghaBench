
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int mem_start; int mem_end; int name; int watchdog_timeo; int * netdev_ops; int mtu; int tx_queue_len; int irq; } ;
struct TYPE_18__ {struct net_device* dev; scalar_t__ line_off; scalar_t__ line_on; scalar_t__ trace_on; TYPE_6__* chan; } ;
typedef TYPE_5__ pc300dev_t ;
struct TYPE_15__ {int parity; int encoding; } ;
struct TYPE_14__ {int clock_type; scalar_t__ clock_rate; } ;
struct TYPE_16__ {int tslot_bitmap; int proto; int media; int rx_sens; int lbo; int fr_mode; int lcode; TYPE_2__ proto_settings; TYPE_1__ phys_settings; } ;
struct TYPE_19__ {int channel; int nfree_tx_bd; scalar_t__ rx_last_bd; scalar_t__ rx_first_bd; scalar_t__ tx_next_bd; scalar_t__ tx_first_bd; TYPE_3__ conf; TYPE_7__* card; TYPE_5__ d; } ;
typedef TYPE_6__ pc300ch_t ;
struct TYPE_17__ {int ramsize; int type; int cpld_id; int nchan; int ramphys; int irq; int bus; scalar_t__ cpld_reg1; scalar_t__ falcbase; int cpld_reg2; scalar_t__ scabase; int clock; scalar_t__ gpioc_reg; scalar_t__ plxbase; scalar_t__ intctl_reg; } ;
struct TYPE_20__ {int card_lock; TYPE_4__ hw; TYPE_6__* chan; } ;
typedef TYPE_7__ pc300_t ;
struct TYPE_21__ {int attach; int xmit; } ;
typedef TYPE_8__ hdlc_device ;


 scalar_t__ BTCR ;
 int CLOCK_EXT ;
 scalar_t__ CPLD_ID_REG ;
 scalar_t__ CPLD_REG1 ;
 int CPLD_REG1_GLOBAL_CLK ;
 int CPLD_REG2 ;
 scalar_t__ CPLD_V2_REG1 ;
 int CPLD_V2_REG2 ;
 scalar_t__ DMER ;
 int ENCODING_NRZ ;
 int IF_IFACE_T1 ;
 int IF_IFACE_V35 ;
 int IF_IFACE_X21 ;
 int IF_PROTO_PPP ;
 scalar_t__ N_DMA_RX_BUF ;
 int N_DMA_TX_BUF ;
 int PARITY_CRC16_PR1_CCITT ;
 int PC300_DEF_MTU ;
 int PC300_FR_ESF ;
 int PC300_LBO_0_DB ;
 int PC300_LC_B8ZS ;
 int PC300_OSC_CLOCK ;
 int PC300_PCI_CLOCK ;
 int PC300_PMC ;

 int PC300_RX_SENS_SH ;

 int PC300_TX_QUEUE_LEN ;
 int PC300_TX_TIMEOUT ;

 scalar_t__ PCR ;
 int PCR_PR2 ;
 scalar_t__ WCRL ;
 struct net_device* alloc_hdlcdev (TYPE_5__*) ;
 int cpc_attach ;
 int cpc_netdev_ops ;
 int cpc_queue_xmit ;
 int cpc_readb (scalar_t__) ;
 int cpc_readl (scalar_t__) ;
 int cpc_readw (scalar_t__) ;
 int cpc_writeb (scalar_t__,int) ;
 int cpc_writel (scalar_t__,int) ;
 int cpc_writew (scalar_t__,int) ;
 int detect_ram (TYPE_7__*) ;
 TYPE_8__* dev_to_hdlc (struct net_device*) ;
 int free_netdev (struct net_device*) ;
 int plx_init (TYPE_7__*) ;
 int printk (char*,...) ;
 scalar_t__ register_hdlc_device (struct net_device*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void cpc_init_card(pc300_t * card)
{
 int i, devcount = 0;
 static int board_nbr = 1;


 plx_init(card);
 cpc_writew(card->hw.plxbase + card->hw.intctl_reg,
     cpc_readw(card->hw.plxbase + card->hw.intctl_reg) | 0x0040);
 cpc_writel(card->hw.plxbase + card->hw.gpioc_reg,
     cpc_readl(card->hw.plxbase + card->hw.gpioc_reg) & ~0x00000004UL);
 card->hw.clock = PC300_OSC_CLOCK;



 card->hw.ramsize = detect_ram(card);


 cpc_writeb(card->hw.scabase + PCR, PCR_PR2);
 cpc_writeb(card->hw.scabase + BTCR, 0x10);
 cpc_writeb(card->hw.scabase + WCRL, 0);
 cpc_writeb(card->hw.scabase + DMER, 0x80);

 if (card->hw.type == 129) {
  u8 reg1;


  reg1 = cpc_readb(card->hw.falcbase + CPLD_REG1);
  cpc_writeb(card->hw.falcbase + CPLD_REG1, (reg1 + 0x5a));
  if (cpc_readb(card->hw.falcbase + CPLD_REG1) == reg1) {

   card->hw.cpld_id = cpc_readb(card->hw.falcbase + CPLD_ID_REG);
   card->hw.cpld_reg1 = CPLD_V2_REG1;
   card->hw.cpld_reg2 = CPLD_V2_REG2;
  } else {

   card->hw.cpld_id = 0;
   card->hw.cpld_reg1 = CPLD_REG1;
   card->hw.cpld_reg2 = CPLD_REG2;
   cpc_writeb(card->hw.falcbase + CPLD_REG1, reg1);
  }


  cpc_writeb(card->hw.falcbase + card->hw.cpld_reg1,
      cpc_readb(card->hw.falcbase + card->hw.cpld_reg1) |
      CPLD_REG1_GLOBAL_CLK);

 }

 for (i = 0; i < card->hw.nchan; i++) {
  pc300ch_t *chan = &card->chan[i];
  pc300dev_t *d = &chan->d;
  hdlc_device *hdlc;
  struct net_device *dev;

  chan->card = card;
  chan->channel = i;
  chan->conf.phys_settings.clock_rate = 0;
  chan->conf.phys_settings.clock_type = CLOCK_EXT;
  chan->conf.proto_settings.encoding = ENCODING_NRZ;
  chan->conf.proto_settings.parity = PARITY_CRC16_PR1_CCITT;
  switch (card->hw.type) {
   case 129:
    chan->conf.media = IF_IFACE_T1;
    chan->conf.lcode = PC300_LC_B8ZS;
    chan->conf.fr_mode = PC300_FR_ESF;
    chan->conf.lbo = PC300_LBO_0_DB;
    chan->conf.rx_sens = PC300_RX_SENS_SH;
    chan->conf.tslot_bitmap = 0xffffffffUL;
    break;

   case 128:
    chan->conf.media = IF_IFACE_X21;
    break;

   case 130:
   default:
    chan->conf.media = IF_IFACE_V35;
    break;
  }
  chan->conf.proto = IF_PROTO_PPP;
  chan->tx_first_bd = 0;
  chan->tx_next_bd = 0;
  chan->rx_first_bd = 0;
  chan->rx_last_bd = N_DMA_RX_BUF - 1;
  chan->nfree_tx_bd = N_DMA_TX_BUF;

  d->chan = chan;
  d->trace_on = 0;
  d->line_on = 0;
  d->line_off = 0;

  dev = alloc_hdlcdev(d);
  if (dev == ((void*)0))
   continue;

  hdlc = dev_to_hdlc(dev);
  hdlc->xmit = cpc_queue_xmit;
  hdlc->attach = cpc_attach;
  d->dev = dev;
  dev->mem_start = card->hw.ramphys;
  dev->mem_end = card->hw.ramphys + card->hw.ramsize - 1;
  dev->irq = card->hw.irq;
  dev->tx_queue_len = PC300_TX_QUEUE_LEN;
  dev->mtu = PC300_DEF_MTU;

  dev->netdev_ops = &cpc_netdev_ops;
  dev->watchdog_timeo = PC300_TX_TIMEOUT;

  if (register_hdlc_device(dev) == 0) {
   printk("%s: Cyclades-PC300/", dev->name);
   switch (card->hw.type) {
    case 129:
     if (card->hw.bus == PC300_PMC) {
      printk("TE-M");
     } else {
      printk("TE  ");
     }
     break;

    case 128:
     printk("X21 ");
     break;

    case 130:
    default:
     printk("RSV ");
     break;
   }
   printk (" #%d, %dKB of RAM at 0x%08x, IRQ%d, channel %d.\n",
     board_nbr, card->hw.ramsize / 1024,
     card->hw.ramphys, card->hw.irq, i + 1);
   devcount++;
  } else {
   printk ("Dev%d on card(0x%08x): unable to allocate i/f name.\n",
     i + 1, card->hw.ramphys);
   free_netdev(dev);
   continue;
  }
 }
 spin_lock_init(&card->card_lock);

 board_nbr++;
}
