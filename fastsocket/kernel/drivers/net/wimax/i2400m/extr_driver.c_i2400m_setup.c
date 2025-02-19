
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wimax_dev {struct net_device* net_dev; int op_reset; int op_rfkill_sw_toggle; int op_msg_from_user; int name; } ;
struct TYPE_4__ {int kobj; } ;
struct net_device {TYPE_2__ dev; } ;
struct i2400m {int * bm_cmd_buf; int * bm_ack_buf; struct wimax_dev wimax_dev; int src_mac_addr; } ;
struct device {TYPE_1__* bus; } ;
typedef enum i2400m_bri { ____Placeholder_i2400m_bri } i2400m_bri ;
struct TYPE_3__ {char* name; } ;


 int ENODEV ;
 int GFP_KERNEL ;
 int I2400M_BM_ACK_BUF_SIZE ;
 int I2400M_BM_CMD_BUF_SIZE ;
 int WIMAX_ST_UNINITIALIZED ;
 int d_fnend (int,struct device*,char*,struct i2400m*,int) ;
 int d_fnstart (int,struct device*,char*,struct i2400m*) ;
 int dev_err (struct device*,char*,...) ;
 char* dev_name (struct device*) ;
 int i2400m_bootrom_init (struct i2400m*,int) ;
 int i2400m_debugfs_add (struct i2400m*) ;
 struct device* i2400m_dev (struct i2400m*) ;
 int i2400m_dev_attr_group ;
 int i2400m_dev_start (struct i2400m*,int) ;
 int i2400m_dev_stop (struct i2400m*) ;
 int i2400m_op_msg_from_user ;
 int i2400m_op_reset ;
 int i2400m_op_rfkill_sw_toggle ;
 int i2400m_read_mac_addr (struct i2400m*) ;
 int kfree (int *) ;
 void* kzalloc (int ,int ) ;
 int netif_carrier_off (struct net_device*) ;
 int random_ether_addr (int ) ;
 int register_netdev (struct net_device*) ;
 int snprintf (int ,int,char*,char*,char*) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;
 int unregister_netdev (struct net_device*) ;
 int wimax_dev_add (struct wimax_dev*,struct net_device*) ;
 int wimax_dev_rm (struct wimax_dev*) ;
 int wimax_state_change (struct wimax_dev*,int ) ;

int i2400m_setup(struct i2400m *i2400m, enum i2400m_bri bm_flags)
{
 int result = -ENODEV;
 struct device *dev = i2400m_dev(i2400m);
 struct wimax_dev *wimax_dev = &i2400m->wimax_dev;
 struct net_device *net_dev = i2400m->wimax_dev.net_dev;

 d_fnstart(3, dev, "(i2400m %p)\n", i2400m);

 snprintf(wimax_dev->name, sizeof(wimax_dev->name),
   "i2400m-%s:%s", dev->bus->name, dev_name(dev));

 i2400m->bm_cmd_buf = kzalloc(I2400M_BM_CMD_BUF_SIZE, GFP_KERNEL);
 if (i2400m->bm_cmd_buf == ((void*)0)) {
  dev_err(dev, "cannot allocate USB command buffer\n");
  goto error_bm_cmd_kzalloc;
 }
 i2400m->bm_ack_buf = kzalloc(I2400M_BM_ACK_BUF_SIZE, GFP_KERNEL);
 if (i2400m->bm_ack_buf == ((void*)0)) {
  dev_err(dev, "cannot allocate USB ack buffer\n");
  goto error_bm_ack_buf_kzalloc;
 }
 result = i2400m_bootrom_init(i2400m, bm_flags);
 if (result < 0) {
  dev_err(dev, "read mac addr: bootrom init "
   "failed: %d\n", result);
  goto error_bootrom_init;
 }
 result = i2400m_read_mac_addr(i2400m);
 if (result < 0)
  goto error_read_mac_addr;
 random_ether_addr(i2400m->src_mac_addr);

 result = register_netdev(net_dev);
 if (result < 0) {
  dev_err(dev, "cannot register i2400m network device: %d\n",
   result);
  goto error_register_netdev;
 }
 netif_carrier_off(net_dev);

 result = i2400m_dev_start(i2400m, bm_flags);
 if (result < 0)
  goto error_dev_start;

 i2400m->wimax_dev.op_msg_from_user = i2400m_op_msg_from_user;
 i2400m->wimax_dev.op_rfkill_sw_toggle = i2400m_op_rfkill_sw_toggle;
 i2400m->wimax_dev.op_reset = i2400m_op_reset;
 result = wimax_dev_add(&i2400m->wimax_dev, net_dev);
 if (result < 0)
  goto error_wimax_dev_add;

 wimax_state_change(wimax_dev, WIMAX_ST_UNINITIALIZED);


 result = sysfs_create_group(&net_dev->dev.kobj, &i2400m_dev_attr_group);
 if (result < 0) {
  dev_err(dev, "cannot setup i2400m's sysfs: %d\n", result);
  goto error_sysfs_setup;
 }
 result = i2400m_debugfs_add(i2400m);
 if (result < 0) {
  dev_err(dev, "cannot setup i2400m's debugfs: %d\n", result);
  goto error_debugfs_setup;
 }
 d_fnend(3, dev, "(i2400m %p) = %d\n", i2400m, result);
 return result;

error_debugfs_setup:
 sysfs_remove_group(&i2400m->wimax_dev.net_dev->dev.kobj,
      &i2400m_dev_attr_group);
error_sysfs_setup:
 wimax_dev_rm(&i2400m->wimax_dev);
error_wimax_dev_add:
 i2400m_dev_stop(i2400m);
error_dev_start:
 unregister_netdev(net_dev);
error_register_netdev:
error_read_mac_addr:
error_bootrom_init:
 kfree(i2400m->bm_ack_buf);
error_bm_ack_buf_kzalloc:
 kfree(i2400m->bm_cmd_buf);
error_bm_cmd_kzalloc:
 d_fnend(3, dev, "(i2400m %p) = %d\n", i2400m, result);
 return result;
}
