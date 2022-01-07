
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p54p_ring_control {int rx_data; int rx_mgmt; int tx_data; int tx_mgmt; } ;
struct p54p_priv {int rx_buf_data; int rx_idx_data; int rx_buf_mgmt; int rx_idx_mgmt; int tx_buf_data; int tx_idx_data; int tx_buf_mgmt; int tx_idx_mgmt; struct p54p_ring_control* ring_control; } ;
struct ieee80211_hw {struct p54p_priv* priv; } ;


 int ARRAY_SIZE (int ) ;
 int ISL38XX_DEV_INT_UPDATE ;
 int P54P_WRITE (int ,int ) ;
 int cpu_to_le32 (int ) ;
 int dev_int ;
 int p54p_check_rx_ring (struct ieee80211_hw*,int *,int,int ,int ,int ) ;
 int p54p_check_tx_ring (struct ieee80211_hw*,int *,int,int ,int ,int ) ;
 int wmb () ;

__attribute__((used)) static void p54p_tasklet(unsigned long dev_id)
{
 struct ieee80211_hw *dev = (struct ieee80211_hw *)dev_id;
 struct p54p_priv *priv = dev->priv;
 struct p54p_ring_control *ring_control = priv->ring_control;

 p54p_check_tx_ring(dev, &priv->tx_idx_mgmt, 3, ring_control->tx_mgmt,
      ARRAY_SIZE(ring_control->tx_mgmt),
      priv->tx_buf_mgmt);

 p54p_check_tx_ring(dev, &priv->tx_idx_data, 1, ring_control->tx_data,
      ARRAY_SIZE(ring_control->tx_data),
      priv->tx_buf_data);

 p54p_check_rx_ring(dev, &priv->rx_idx_mgmt, 2, ring_control->rx_mgmt,
  ARRAY_SIZE(ring_control->rx_mgmt), priv->rx_buf_mgmt);

 p54p_check_rx_ring(dev, &priv->rx_idx_data, 0, ring_control->rx_data,
  ARRAY_SIZE(ring_control->rx_data), priv->rx_buf_data);

 wmb();
 P54P_WRITE(dev_int, cpu_to_le32(ISL38XX_DEV_INT_UPDATE));
}
