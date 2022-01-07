
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_host {int dummy; } ;
struct eth1394_priv {scalar_t__ iso; int local_fifo; } ;
struct eth1394_host_info {int dev; } ;


 int eth1394_highlevel ;
 int free_netdev (int ) ;
 int hpsb_config_rom_ip1394_remove (struct hpsb_host*) ;
 struct eth1394_host_info* hpsb_get_hostinfo (int *,struct hpsb_host*) ;
 int hpsb_iso_shutdown (scalar_t__) ;
 int hpsb_unregister_addrspace (int *,struct hpsb_host*,int ) ;
 struct eth1394_priv* netdev_priv (int ) ;
 int unregister_netdev (int ) ;

__attribute__((used)) static void ether1394_remove_host(struct hpsb_host *host)
{
 struct eth1394_host_info *hi;
 struct eth1394_priv *priv;

 hi = hpsb_get_hostinfo(&eth1394_highlevel, host);
 if (!hi)
  return;
 priv = netdev_priv(hi->dev);
 hpsb_unregister_addrspace(&eth1394_highlevel, host, priv->local_fifo);
 hpsb_config_rom_ip1394_remove(host);
 if (priv->iso)
  hpsb_iso_shutdown(priv->iso);
 unregister_netdev(hi->dev);
 free_netdev(hi->dev);
}
