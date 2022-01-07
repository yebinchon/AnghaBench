
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct t3cdev {TYPE_2__* lldev; } ;
struct t3c_data {int tid_release_lock; int tid_release_task; } ;
struct adapter {int open_device_map; } ;
struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int OFFLOAD_DEVMAP_BIT ;
 struct t3c_data* T3C_DATA (struct t3cdev*) ;
 int cancel_work_sync (int *) ;
 int clear_bit (int ,int *) ;
 int cxgb3_offload_deactivate (struct adapter*) ;
 int cxgb3_remove_clients (struct t3cdev*) ;
 int cxgb3_set_dummy_ops (struct t3cdev*) ;
 int cxgb_down (struct adapter*,int ) ;
 int flush_work (int *) ;
 int offload_attr_group ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int sysfs_remove_group (int *,int *) ;
 int t3_tp_set_offload_mode (struct adapter*,int ) ;
 struct adapter* tdev2adap (struct t3cdev*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int offload_close(struct t3cdev *tdev)
{
 struct adapter *adapter = tdev2adap(tdev);
 struct t3c_data *td = T3C_DATA(tdev);

 if (!test_bit(OFFLOAD_DEVMAP_BIT, &adapter->open_device_map))
  return 0;


 cxgb3_remove_clients(tdev);

 sysfs_remove_group(&tdev->lldev->dev.kobj, &offload_attr_group);


 spin_lock_bh(&td->tid_release_lock);
 flush_work(&td->tid_release_task);
 cancel_work_sync(&td->tid_release_task);
 spin_unlock_bh(&td->tid_release_lock);

 tdev->lldev = ((void*)0);
 cxgb3_set_dummy_ops(tdev);
 t3_tp_set_offload_mode(adapter, 0);
 clear_bit(OFFLOAD_DEVMAP_BIT, &adapter->open_device_map);

 if (!adapter->open_device_map)
  cxgb_down(adapter, 0);

 cxgb3_offload_deactivate(adapter);
 return 0;
}
