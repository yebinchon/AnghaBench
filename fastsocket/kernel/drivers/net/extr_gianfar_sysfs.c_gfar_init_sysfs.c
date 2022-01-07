
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev; } ;
struct gfar_private {int fifo_starve_off; int fifo_starve; int fifo_threshold; } ;


 int DEFAULT_FIFO_TX_STARVE ;
 int DEFAULT_FIFO_TX_STARVE_OFF ;
 int DEFAULT_FIFO_TX_THR ;
 int dev_attr_bd_stash ;
 int dev_attr_fifo_starve ;
 int dev_attr_fifo_starve_off ;
 int dev_attr_fifo_threshold ;
 int dev_attr_rx_stash_index ;
 int dev_attr_rx_stash_size ;
 int dev_err (int *,char*) ;
 int device_create_file (int *,int *) ;
 struct gfar_private* netdev_priv (struct net_device*) ;

void gfar_init_sysfs(struct net_device *dev)
{
 struct gfar_private *priv = netdev_priv(dev);
 int rc;


 priv->fifo_threshold = DEFAULT_FIFO_TX_THR;
 priv->fifo_starve = DEFAULT_FIFO_TX_STARVE;
 priv->fifo_starve_off = DEFAULT_FIFO_TX_STARVE_OFF;


 rc = device_create_file(&dev->dev, &dev_attr_bd_stash);
 rc |= device_create_file(&dev->dev, &dev_attr_rx_stash_size);
 rc |= device_create_file(&dev->dev, &dev_attr_rx_stash_index);
 rc |= device_create_file(&dev->dev, &dev_attr_fifo_threshold);
 rc |= device_create_file(&dev->dev, &dev_attr_fifo_starve);
 rc |= device_create_file(&dev->dev, &dev_attr_fifo_starve_off);
 if (rc)
  dev_err(&dev->dev, "Error creating gianfar sysfs files.\n");
}
