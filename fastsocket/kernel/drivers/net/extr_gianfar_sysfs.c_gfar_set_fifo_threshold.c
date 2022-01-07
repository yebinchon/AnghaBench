
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct gfar_private {unsigned int fifo_threshold; int txlock; TYPE_1__* regs; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int fifo_tx_thr; } ;


 unsigned int FIFO_TX_THR_MASK ;
 unsigned int GFAR_MAX_FIFO_THRESHOLD ;
 unsigned int gfar_read (int *) ;
 int gfar_write (int *,unsigned int) ;
 struct gfar_private* netdev_priv (int ) ;
 unsigned int simple_strtoul (char const*,int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t gfar_set_fifo_threshold(struct device *dev,
           struct device_attribute *attr,
           const char *buf, size_t count)
{
 struct gfar_private *priv = netdev_priv(to_net_dev(dev));
 unsigned int length = simple_strtoul(buf, ((void*)0), 0);
 u32 temp;
 unsigned long flags;

 if (length > GFAR_MAX_FIFO_THRESHOLD)
  return count;

 spin_lock_irqsave(&priv->txlock, flags);

 priv->fifo_threshold = length;

 temp = gfar_read(&priv->regs->fifo_tx_thr);
 temp &= ~FIFO_TX_THR_MASK;
 temp |= length;
 gfar_write(&priv->regs->fifo_tx_thr, temp);

 spin_unlock_irqrestore(&priv->txlock, flags);

 return count;
}
