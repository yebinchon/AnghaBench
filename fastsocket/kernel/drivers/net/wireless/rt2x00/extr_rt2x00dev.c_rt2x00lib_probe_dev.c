
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct rt2x00_intf {int dummy; } ;
struct rt2x00_dev {TYPE_4__* ops; int sleep_work; int autowakeup_work; int intf_work; int workqueue; TYPE_2__* hw; int flags; int bar_list_lock; int bar_list; int csr_mutex; int irqmask_lock; int drv_data; } ;
struct TYPE_10__ {int interface_modes; int flags; scalar_t__* addr_mask; } ;
struct TYPE_9__ {scalar_t__ drv_data_size; TYPE_3__* lib; TYPE_1__* bcn; scalar_t__ max_ap_intf; } ;
struct TYPE_8__ {int (* probe_hw ) (struct rt2x00_dev*) ;} ;
struct TYPE_7__ {int vif_data_size; TYPE_5__* wiphy; } ;
struct TYPE_6__ {scalar_t__ entry_num; } ;


 int BIT (int ) ;
 int DEVICE_STATE_PRESENT ;
 int ENOMEM ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int NL80211_IFTYPE_ADHOC ;
 int NL80211_IFTYPE_AP ;
 int NL80211_IFTYPE_MESH_POINT ;
 int NL80211_IFTYPE_STATION ;
 int NL80211_IFTYPE_WDS ;
 int WIPHY_FLAG_IBSS_RSN ;
 int alloc_ordered_workqueue (int ,int ) ;
 int kzalloc (scalar_t__,int ) ;
 int mutex_init (int *) ;
 int rt2x00_err (struct rt2x00_dev*,char*) ;
 int rt2x00debug_register (struct rt2x00_dev*) ;
 int rt2x00leds_register (struct rt2x00_dev*) ;
 int rt2x00lib_autowakeup ;
 int rt2x00lib_intf_scheduled ;
 int rt2x00lib_probe_hw (struct rt2x00_dev*) ;
 int rt2x00lib_remove_dev (struct rt2x00_dev*) ;
 int rt2x00lib_set_if_combinations (struct rt2x00_dev*) ;
 int rt2x00lib_sleep ;
 int rt2x00link_register (struct rt2x00_dev*) ;
 int rt2x00queue_allocate (struct rt2x00_dev*) ;
 int rt2x00rfkill_register (struct rt2x00_dev*) ;
 int set_bit (int ,int *) ;
 int spin_lock_init (int *) ;
 int stub1 (struct rt2x00_dev*) ;
 int wiphy_name (TYPE_5__*) ;

int rt2x00lib_probe_dev(struct rt2x00_dev *rt2x00dev)
{
 int retval = -ENOMEM;




 rt2x00lib_set_if_combinations(rt2x00dev);




 if (rt2x00dev->ops->drv_data_size > 0) {
  rt2x00dev->drv_data = kzalloc(rt2x00dev->ops->drv_data_size,
                         GFP_KERNEL);
  if (!rt2x00dev->drv_data) {
   retval = -ENOMEM;
   goto exit;
  }
 }

 spin_lock_init(&rt2x00dev->irqmask_lock);
 mutex_init(&rt2x00dev->csr_mutex);
 INIT_LIST_HEAD(&rt2x00dev->bar_list);
 spin_lock_init(&rt2x00dev->bar_list_lock);

 set_bit(DEVICE_STATE_PRESENT, &rt2x00dev->flags);





 rt2x00dev->hw->vif_data_size = sizeof(struct rt2x00_intf);





 rt2x00dev->hw->wiphy->addr_mask[ETH_ALEN - 1] =
  (rt2x00dev->ops->max_ap_intf - 1);






 rt2x00dev->hw->wiphy->interface_modes = BIT(NL80211_IFTYPE_STATION);
 if (rt2x00dev->ops->bcn->entry_num > 0)
  rt2x00dev->hw->wiphy->interface_modes |=
      BIT(NL80211_IFTYPE_ADHOC) |
      BIT(NL80211_IFTYPE_AP) |



      BIT(NL80211_IFTYPE_WDS);

 rt2x00dev->hw->wiphy->flags |= WIPHY_FLAG_IBSS_RSN;




 rt2x00dev->workqueue =
     alloc_ordered_workqueue(wiphy_name(rt2x00dev->hw->wiphy), 0);
 if (!rt2x00dev->workqueue) {
  retval = -ENOMEM;
  goto exit;
 }

 INIT_WORK(&rt2x00dev->intf_work, rt2x00lib_intf_scheduled);
 INIT_DELAYED_WORK(&rt2x00dev->autowakeup_work, rt2x00lib_autowakeup);
 INIT_WORK(&rt2x00dev->sleep_work, rt2x00lib_sleep);




 retval = rt2x00dev->ops->lib->probe_hw(rt2x00dev);
 if (retval) {
  rt2x00_err(rt2x00dev, "Failed to allocate device\n");
  goto exit;
 }




 retval = rt2x00queue_allocate(rt2x00dev);
 if (retval)
  goto exit;




 retval = rt2x00lib_probe_hw(rt2x00dev);
 if (retval) {
  rt2x00_err(rt2x00dev, "Failed to initialize hw\n");
  goto exit;
 }




 rt2x00link_register(rt2x00dev);
 rt2x00leds_register(rt2x00dev);
 rt2x00debug_register(rt2x00dev);
 rt2x00rfkill_register(rt2x00dev);

 return 0;

exit:
 rt2x00lib_remove_dev(rt2x00dev);

 return retval;
}
