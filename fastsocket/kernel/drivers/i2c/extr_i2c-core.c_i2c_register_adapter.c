
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int parent; int * type; TYPE_1__* bus; } ;
struct i2c_adapter {scalar_t__ timeout; scalar_t__ nr; TYPE_2__ dev; int name; int bus_lock; } ;
struct TYPE_8__ {int p; } ;


 int EAGAIN ;
 scalar_t__ HZ ;
 int WARN_ON (int) ;
 scalar_t__ __i2c_first_dynamic_bus_num ;
 int bus_for_each_drv (TYPE_1__*,int *,struct i2c_adapter*,int ) ;
 int class_compat_create_link (int ,TYPE_2__*,int ) ;
 int core_lock ;
 int dev_dbg (TYPE_2__*,char*,int ) ;
 int dev_set_name (TYPE_2__*,char*,scalar_t__) ;
 int dev_warn (TYPE_2__*,char*) ;
 int device_register (TYPE_2__*) ;
 int i2c_adapter_compat_class ;
 int i2c_adapter_idr ;
 int i2c_adapter_type ;
 TYPE_1__ i2c_bus_type ;
 int i2c_do_add_adapter ;
 int i2c_scan_static_board_info (struct i2c_adapter*) ;
 int idr_remove (int *,scalar_t__) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int i2c_register_adapter(struct i2c_adapter *adap)
{
 int res = 0, dummy;


 if (unlikely(WARN_ON(!i2c_bus_type.p))) {
  res = -EAGAIN;
  goto out_list;
 }

 mutex_init(&adap->bus_lock);


 if (adap->timeout == 0)
  adap->timeout = HZ;

 dev_set_name(&adap->dev, "i2c-%d", adap->nr);
 adap->dev.bus = &i2c_bus_type;
 adap->dev.type = &i2c_adapter_type;
 res = device_register(&adap->dev);
 if (res)
  goto out_list;

 dev_dbg(&adap->dev, "adapter [%s] registered\n", adap->name);
 if (adap->nr < __i2c_first_dynamic_bus_num)
  i2c_scan_static_board_info(adap);


 mutex_lock(&core_lock);
 dummy = bus_for_each_drv(&i2c_bus_type, ((void*)0), adap,
     i2c_do_add_adapter);
 mutex_unlock(&core_lock);

 return 0;

out_list:
 mutex_lock(&core_lock);
 idr_remove(&i2c_adapter_idr, adap->nr);
 mutex_unlock(&core_lock);
 return res;
}
