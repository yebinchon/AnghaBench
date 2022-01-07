
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct port_info {struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct adapter {int dummy; } ;


 int A_T3DBG_GPIO_EN ;
 int F_GPIO0_OUT_VAL ;
 scalar_t__ msleep_interruptible (int) ;
 struct port_info* netdev_priv (struct net_device*) ;
 int t3_set_reg_field (struct adapter*,int ,int ,int ) ;

__attribute__((used)) static int cxgb3_phys_id(struct net_device *dev, u32 data)
{
 struct port_info *pi = netdev_priv(dev);
 struct adapter *adapter = pi->adapter;
 int i;

 if (data == 0)
  data = 2;

 for (i = 0; i < data * 2; i++) {
  t3_set_reg_field(adapter, A_T3DBG_GPIO_EN, F_GPIO0_OUT_VAL,
     (i & 1) ? F_GPIO0_OUT_VAL : 0);
  if (msleep_interruptible(500))
   break;
 }
 t3_set_reg_field(adapter, A_T3DBG_GPIO_EN, F_GPIO0_OUT_VAL,
    F_GPIO0_OUT_VAL);
 return 0;
}
