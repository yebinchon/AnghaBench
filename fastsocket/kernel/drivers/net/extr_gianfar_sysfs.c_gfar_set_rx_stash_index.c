
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct gfar_private {int device_flags; unsigned short rx_stash_size; unsigned short rx_stash_index; int rxlock; TYPE_1__* regs; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int attreli; } ;


 int ATTRELI_EI (unsigned short) ;
 int ATTRELI_EI_MASK ;
 int FSL_GIANFAR_DEV_HAS_BUF_STASHING ;
 int gfar_read (int *) ;
 int gfar_write (int *,unsigned long) ;
 struct gfar_private* netdev_priv (int ) ;
 unsigned short simple_strtoul (char const*,int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t gfar_set_rx_stash_index(struct device *dev,
           struct device_attribute *attr,
           const char *buf, size_t count)
{
 struct gfar_private *priv = netdev_priv(to_net_dev(dev));
 unsigned short index = simple_strtoul(buf, ((void*)0), 0);
 u32 temp;
 unsigned long flags;

 if (!(priv->device_flags & FSL_GIANFAR_DEV_HAS_BUF_STASHING))
  return count;

 spin_lock_irqsave(&priv->rxlock, flags);
 if (index > priv->rx_stash_size)
  goto out;

 if (index == priv->rx_stash_index)
  goto out;

 priv->rx_stash_index = index;

 temp = gfar_read(&priv->regs->attreli);
 temp &= ~ATTRELI_EI_MASK;
 temp |= ATTRELI_EI(index);
 gfar_write(&priv->regs->attreli, flags);

out:
 spin_unlock_irqrestore(&priv->rxlock, flags);

 return count;
}
