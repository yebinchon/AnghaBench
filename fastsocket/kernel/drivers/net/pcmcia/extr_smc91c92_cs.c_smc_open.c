
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_long ;
struct TYPE_3__ {scalar_t__ expires; scalar_t__ data; int * function; } ;
struct smc_private {TYPE_1__ media; scalar_t__ packets_waiting; int * saved_skb; struct pcmcia_device* p_dev; } ;
struct pcmcia_device {int open; } ;
struct net_device {scalar_t__ base_addr; int name; } ;


 scalar_t__ BANK_SELECT ;
 int DEBUG (int ,char*,int ,struct net_device*,int ) ;
 int ENODEV ;
 scalar_t__ HZ ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ check_sig (struct pcmcia_device*) ;
 int init_timer (TYPE_1__*) ;
 int inw (scalar_t__) ;
 scalar_t__ jiffies ;
 int media_check ;
 struct smc_private* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int pc_debug ;
 int pcmcia_dev_present (struct pcmcia_device*) ;
 int printk (char*) ;
 int smc_dump (struct net_device*) ;
 int smc_reset (struct net_device*) ;

__attribute__((used)) static int smc_open(struct net_device *dev)
{
    struct smc_private *smc = netdev_priv(dev);
    struct pcmcia_device *link = smc->p_dev;
    if (!pcmcia_dev_present(link))
 return -ENODEV;

    if (check_sig(link) < 0) {
 printk("smc91c92_cs: Yikes!  Bad chip signature!\n");
 return -ENODEV;
    }
    link->open++;

    netif_start_queue(dev);
    smc->saved_skb = ((void*)0);
    smc->packets_waiting = 0;

    smc_reset(dev);
    init_timer(&smc->media);
    smc->media.function = &media_check;
    smc->media.data = (u_long) dev;
    smc->media.expires = jiffies + HZ;
    add_timer(&smc->media);

    return 0;
}
