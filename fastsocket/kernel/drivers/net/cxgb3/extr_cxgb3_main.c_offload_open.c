
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct t3cdev {TYPE_3__* lldev; } ;
struct port_info {struct adapter* adapter; } ;
struct net_device {int dev; } ;
struct TYPE_4__ {scalar_t__ rev; int b_wnd; int a_wnd; int mtus; } ;
struct adapter {int open_device_map; TYPE_3__** port; TYPE_1__ params; } ;
struct TYPE_5__ {int kobj; } ;
struct TYPE_6__ {int mtu; TYPE_2__ dev; } ;


 int OFFLOAD_DEVMAP_BIT ;
 int PORT_MASK ;
 int clear_bit (int ,int*) ;
 int cxgb3_add_clients (struct t3cdev*) ;
 int cxgb3_offload_activate (struct adapter*) ;
 int cxgb3_set_dummy_ops (struct t3cdev*) ;
 int cxgb_up (struct adapter*) ;
 struct t3cdev* dev2t3cdev (struct net_device*) ;
 int dev_dbg (int *,char*) ;
 int init_port_mtus (struct adapter*) ;
 int init_smt (struct adapter*) ;
 struct port_info* netdev_priv (struct net_device*) ;
 int offload_attr_group ;
 scalar_t__ sysfs_create_group (int *,int *) ;
 int t3_load_mtus (struct adapter*,int ,int ,int ,int) ;
 int t3_tp_set_offload_mode (struct adapter*,int) ;
 scalar_t__ test_and_set_bit (int ,int*) ;

__attribute__((used)) static int offload_open(struct net_device *dev)
{
 struct port_info *pi = netdev_priv(dev);
 struct adapter *adapter = pi->adapter;
 struct t3cdev *tdev = dev2t3cdev(dev);
 int adap_up = adapter->open_device_map & PORT_MASK;
 int err;

 if (test_and_set_bit(OFFLOAD_DEVMAP_BIT, &adapter->open_device_map))
  return 0;

 if (!adap_up && (err = cxgb_up(adapter)) < 0)
  goto out;

 t3_tp_set_offload_mode(adapter, 1);
 tdev->lldev = adapter->port[0];
 err = cxgb3_offload_activate(adapter);
 if (err)
  goto out;

 init_port_mtus(adapter);
 t3_load_mtus(adapter, adapter->params.mtus, adapter->params.a_wnd,
       adapter->params.b_wnd,
       adapter->params.rev == 0 ?
       adapter->port[0]->mtu : 0xffff);
 init_smt(adapter);

 if (sysfs_create_group(&tdev->lldev->dev.kobj, &offload_attr_group))
  dev_dbg(&dev->dev, "cannot create sysfs group\n");


 cxgb3_add_clients(tdev);

out:

 if (err) {
  t3_tp_set_offload_mode(adapter, 0);
  clear_bit(OFFLOAD_DEVMAP_BIT, &adapter->open_device_map);
  cxgb3_set_dummy_ops(tdev);
 }
 return err;
}
