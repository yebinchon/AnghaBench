
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wimax_dev {int name; } ;
struct i2400m {struct wimax_dev wimax_dev; } ;
struct i2400mu {int rx_kthread; TYPE_1__* usb_iface; struct i2400m i2400m; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*,int) ;
 int i2400mu_rxd ;
 int kthread_run (int ,struct i2400mu*,char*,int ) ;

int i2400mu_rx_setup(struct i2400mu *i2400mu)
{
 int result = 0;
 struct i2400m *i2400m = &i2400mu->i2400m;
 struct device *dev = &i2400mu->usb_iface->dev;
 struct wimax_dev *wimax_dev = &i2400m->wimax_dev;

 i2400mu->rx_kthread = kthread_run(i2400mu_rxd, i2400mu, "%s-rx",
       wimax_dev->name);
 if (IS_ERR(i2400mu->rx_kthread)) {
  result = PTR_ERR(i2400mu->rx_kthread);
  dev_err(dev, "RX: cannot start thread: %d\n", result);
 }
 return result;
}
