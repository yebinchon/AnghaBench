
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct gfar_private {int device_flags; int bd_stash_en; int rxlock; TYPE_1__* regs; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int attr; } ;


 int ATTR_BDSTASH ;
 int FSL_GIANFAR_DEV_HAS_BD_STASHING ;
 int gfar_read (int *) ;
 int gfar_write (int *,int ) ;
 struct gfar_private* netdev_priv (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int strncmp (char*,char const*,size_t) ;
 int to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t gfar_set_bd_stash(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct gfar_private *priv = netdev_priv(to_net_dev(dev));
 int new_setting = 0;
 u32 temp;
 unsigned long flags;

 if (!(priv->device_flags & FSL_GIANFAR_DEV_HAS_BD_STASHING))
  return count;


 if (!strncmp("on", buf, count - 1) || !strncmp("1", buf, count - 1))
  new_setting = 1;
 else if (!strncmp("off", buf, count - 1)
   || !strncmp("0", buf, count - 1))
  new_setting = 0;
 else
  return count;

 spin_lock_irqsave(&priv->rxlock, flags);


 priv->bd_stash_en = new_setting;

 temp = gfar_read(&priv->regs->attr);

 if (new_setting)
  temp |= ATTR_BDSTASH;
 else
  temp &= ~(ATTR_BDSTASH);

 gfar_write(&priv->regs->attr, temp);

 spin_unlock_irqrestore(&priv->rxlock, flags);

 return count;
}
