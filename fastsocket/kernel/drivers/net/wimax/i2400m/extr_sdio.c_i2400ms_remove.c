
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct sdio_func {struct device dev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct net_device* net_dev; } ;
struct i2400m {TYPE_1__ wimax_dev; } ;
struct i2400ms {int debugfs_dentry; struct i2400m i2400m; } ;


 int d_fnend (int,struct device*,char*,struct sdio_func*) ;
 int d_fnstart (int,struct device*,char*,struct sdio_func*) ;
 int debugfs_remove_recursive (int ) ;
 int free_netdev (struct net_device*) ;
 int i2400m_release (struct i2400m*) ;
 int i2400ms_rx_release (struct i2400ms*) ;
 int sdio_claim_host (struct sdio_func*) ;
 int sdio_disable_func (struct sdio_func*) ;
 struct i2400ms* sdio_get_drvdata (struct sdio_func*) ;
 int sdio_release_host (struct sdio_func*) ;
 int sdio_set_drvdata (struct sdio_func*,int *) ;

__attribute__((used)) static
void i2400ms_remove(struct sdio_func *func)
{
 struct device *dev = &func->dev;
 struct i2400ms *i2400ms = sdio_get_drvdata(func);
 struct i2400m *i2400m = &i2400ms->i2400m;
 struct net_device *net_dev = i2400m->wimax_dev.net_dev;

 d_fnstart(3, dev, "SDIO func %p\n", func);
 debugfs_remove_recursive(i2400ms->debugfs_dentry);
 i2400ms_rx_release(i2400ms);
 i2400m_release(i2400m);
 sdio_set_drvdata(func, ((void*)0));
 sdio_claim_host(func);
 sdio_disable_func(func);
 sdio_release_host(func);
 free_netdev(net_dev);
 d_fnend(3, dev, "SDIO func %p\n", func);
}
