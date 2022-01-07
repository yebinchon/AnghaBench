
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct config_param {int max_mc_addr; } ;
struct s2io_nic {struct config_param config; } ;
struct net_device {int dummy; } ;


 scalar_t__ S2IO_DISABLE_MAC_ENTRY ;
 int do_s2io_delete_unicast_mc (struct s2io_nic*,scalar_t__) ;
 scalar_t__ do_s2io_read_unicast_mc (struct s2io_nic*,int) ;
 int is_s2io_card_up (struct s2io_nic*) ;
 struct s2io_nic* netdev_priv (struct net_device*) ;
 int s2io_card_down (struct s2io_nic*) ;
 int s2io_stop_all_tx_queue (struct s2io_nic*) ;

__attribute__((used)) static int s2io_close(struct net_device *dev)
{
 struct s2io_nic *sp = netdev_priv(dev);
 struct config_param *config = &sp->config;
 u64 tmp64;
 int offset;




 if (!is_s2io_card_up(sp))
  return 0;

 s2io_stop_all_tx_queue(sp);

 for (offset = 1; offset < config->max_mc_addr; offset++) {
  tmp64 = do_s2io_read_unicast_mc(sp, offset);
  if (tmp64 != S2IO_DISABLE_MAC_ENTRY)
   do_s2io_delete_unicast_mc(sp, tmp64);
 }

 s2io_card_down(sp);

 return 0;
}
