
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uml_net_private {scalar_t__ user; } ;
struct pcap_init {int filter; int optimize; int promisc; int host_if; } ;
struct pcap_data {int host_if; int filter; int optimize; int promisc; } ;
struct net_device {int dummy; } ;


 struct uml_net_private* netdev_priv (struct net_device*) ;
 int printk (char*,int ) ;

void pcap_init(struct net_device *dev, void *data)
{
 struct uml_net_private *pri;
 struct pcap_data *ppri;
 struct pcap_init *init = data;

 pri = netdev_priv(dev);
 ppri = (struct pcap_data *) pri->user;
 ppri->host_if = init->host_if;
 ppri->promisc = init->promisc;
 ppri->optimize = init->optimize;
 ppri->filter = init->filter;

 printk("pcap backend, host interface %s\n", ppri->host_if);
}
