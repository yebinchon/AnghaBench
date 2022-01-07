
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pasemi_mac {int napi; int dma_if; scalar_t__ bufsz; int num_cs; } ;
struct net_device {int mtu; } ;
struct TYPE_3__ {scalar_t__ next_to_fill; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ ETH_FCS_LEN ;
 scalar_t__ ETH_HLEN ;
 scalar_t__ LOCAL_SKB_ALIGN ;
 int PAS_DMA_RXINT_RCMDSTA (int ) ;
 unsigned int PAS_DMA_RXINT_RCMDSTA_EN ;
 int PAS_MAC_CFG_MACCFG ;
 unsigned int PAS_MAC_CFG_MACCFG_MAXF (scalar_t__) ;
 unsigned int PAS_MAC_CFG_MACCFG_MAXF_M ;
 int PE_MAX_MTU ;
 int PE_MIN_MTU ;
 scalar_t__ RX_RING_SIZE ;
 int napi_disable (int *) ;
 int napi_enable (int *) ;
 struct pasemi_mac* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int netif_tx_disable (struct net_device*) ;
 int pasemi_mac_clean_rx (TYPE_1__*,scalar_t__) ;
 int pasemi_mac_free_rx_buffers (struct pasemi_mac*) ;
 int pasemi_mac_intf_disable (struct pasemi_mac*) ;
 int pasemi_mac_intf_enable (struct pasemi_mac*) ;
 int pasemi_mac_pause_rxint (struct pasemi_mac*) ;
 int pasemi_mac_replenish_rx_ring (struct net_device*,scalar_t__) ;
 int pasemi_mac_setup_csrings (struct pasemi_mac*) ;
 unsigned int read_dma_reg (int ) ;
 unsigned int read_mac_reg (struct pasemi_mac*,int ) ;
 TYPE_1__* rx_ring (struct pasemi_mac*) ;
 int write_dma_reg (int ,unsigned int) ;
 int write_mac_reg (struct pasemi_mac*,int ,unsigned int) ;

__attribute__((used)) static int pasemi_mac_change_mtu(struct net_device *dev, int new_mtu)
{
 struct pasemi_mac *mac = netdev_priv(dev);
 unsigned int reg;
 unsigned int rcmdsta = 0;
 int running;
 int ret = 0;

 if (new_mtu < PE_MIN_MTU || new_mtu > PE_MAX_MTU)
  return -EINVAL;

 running = netif_running(dev);

 if (running) {






  napi_disable(&mac->napi);
  netif_tx_disable(dev);
  pasemi_mac_intf_disable(mac);

  rcmdsta = read_dma_reg(PAS_DMA_RXINT_RCMDSTA(mac->dma_if));
  pasemi_mac_pause_rxint(mac);
  pasemi_mac_clean_rx(rx_ring(mac), RX_RING_SIZE);
  pasemi_mac_free_rx_buffers(mac);

 }


 if (new_mtu > 1500 && !mac->num_cs) {
  pasemi_mac_setup_csrings(mac);
  if (!mac->num_cs) {
   ret = -ENOMEM;
   goto out;
  }
 }




 reg = read_mac_reg(mac, PAS_MAC_CFG_MACCFG);
 reg &= ~PAS_MAC_CFG_MACCFG_MAXF_M;
 reg |= PAS_MAC_CFG_MACCFG_MAXF(new_mtu + ETH_HLEN + 4);
 write_mac_reg(mac, PAS_MAC_CFG_MACCFG, reg);

 dev->mtu = new_mtu;

 mac->bufsz = new_mtu + ETH_HLEN + ETH_FCS_LEN + LOCAL_SKB_ALIGN + 128;

out:
 if (running) {
  write_dma_reg(PAS_DMA_RXINT_RCMDSTA(mac->dma_if),
         rcmdsta | PAS_DMA_RXINT_RCMDSTA_EN);

  rx_ring(mac)->next_to_fill = 0;
  pasemi_mac_replenish_rx_ring(dev, RX_RING_SIZE-1);

  napi_enable(&mac->napi);
  netif_start_queue(dev);
  pasemi_mac_intf_enable(mac);
 }

 return ret;
}
