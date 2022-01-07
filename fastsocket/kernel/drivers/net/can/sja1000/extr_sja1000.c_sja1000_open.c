
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1000_priv {int flags; int open_time; int irq_flags; } ;
struct net_device {int name; int irq; } ;


 int EAGAIN ;
 int SJA1000_CUSTOM_IRQ_HANDLER ;
 int close_candev (struct net_device*) ;
 int jiffies ;
 struct sja1000_priv* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int open_candev (struct net_device*) ;
 int request_irq (int ,int *,int ,int ,void*) ;
 int set_reset_mode (struct net_device*) ;
 int sja1000_interrupt ;
 int sja1000_start (struct net_device*) ;

__attribute__((used)) static int sja1000_open(struct net_device *dev)
{
 struct sja1000_priv *priv = netdev_priv(dev);
 int err;


 set_reset_mode(dev);


 err = open_candev(dev);
 if (err)
  return err;


 if (!(priv->flags & SJA1000_CUSTOM_IRQ_HANDLER)) {
  err = request_irq(dev->irq, &sja1000_interrupt, priv->irq_flags,
      dev->name, (void *)dev);
  if (err) {
   close_candev(dev);
   return -EAGAIN;
  }
 }


 sja1000_start(dev);
 priv->open_time = jiffies;

 netif_start_queue(dev);

 return 0;
}
