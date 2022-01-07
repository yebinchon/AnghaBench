
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_info {struct fifo_info* fifos; } ;
struct config_param {int tx_fifo_num; } ;
struct s2io_nic {scalar_t__ vlgrp; struct mac_info mac_control; struct config_param config; } ;
struct net_device {int dummy; } ;
struct fifo_info {int tx_lock; } ;


 int MAX_TX_FIFOS ;
 struct s2io_nic* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vlan_group_set_device (scalar_t__,unsigned short,int *) ;

__attribute__((used)) static void s2io_vlan_rx_kill_vid(struct net_device *dev, unsigned short vid)
{
 int i;
 struct s2io_nic *nic = netdev_priv(dev);
 unsigned long flags[MAX_TX_FIFOS];
 struct config_param *config = &nic->config;
 struct mac_info *mac_control = &nic->mac_control;

 for (i = 0; i < config->tx_fifo_num; i++) {
  struct fifo_info *fifo = &mac_control->fifos[i];

  spin_lock_irqsave(&fifo->tx_lock, flags[i]);
 }

 if (nic->vlgrp)
  vlan_group_set_device(nic->vlgrp, vid, ((void*)0));

 for (i = config->tx_fifo_num - 1; i >= 0; i--) {
  struct fifo_info *fifo = &mac_control->fifos[i];

  spin_unlock_irqrestore(&fifo->tx_lock, flags[i]);
 }
}
