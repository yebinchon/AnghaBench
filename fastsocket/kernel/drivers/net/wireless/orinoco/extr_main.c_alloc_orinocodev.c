
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct TYPE_2__ {int * spy_data; } ;
struct orinoco_private {int (* hard_reset ) (struct orinoco_private*) ;int (* stop_fw ) (struct orinoco_private*,int) ;int hw_unavailable; int last_linkstatus; int * cached_fw; int * cached_pri_fw; int process_scan; int scan_list; int scan_lock; int rx_tasklet; int rx_list; int wevent_work; int join_work; int reset_work; scalar_t__ open; int lock; int spy_data; TYPE_1__ wireless_data; int * card; struct device* dev; } ;
struct device {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int orinoco_cfg_ops ;
 int orinoco_join_ap ;
 int orinoco_process_scan_results ;
 int orinoco_register_pm_notifier (struct orinoco_private*) ;
 int orinoco_reset ;
 int orinoco_rx_isr_tasklet ;
 int orinoco_send_wevents ;
 int orinoco_wiphy_init (struct wiphy*) ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;
 struct wiphy* wiphy_new (int *,int) ;
 struct orinoco_private* wiphy_priv (struct wiphy*) ;

struct orinoco_private
*alloc_orinocodev(int sizeof_card,
    struct device *device,
    int (*hard_reset)(struct orinoco_private *),
    int (*stop_fw)(struct orinoco_private *, int))
{
 struct orinoco_private *priv;
 struct wiphy *wiphy;





 wiphy = wiphy_new(&orinoco_cfg_ops,
     sizeof(struct orinoco_private) + sizeof_card);
 if (!wiphy)
  return ((void*)0);

 priv = wiphy_priv(wiphy);
 priv->dev = device;

 if (sizeof_card)
  priv->card = (void *)((unsigned long)priv
          + sizeof(struct orinoco_private));
 else
  priv->card = ((void*)0);

 orinoco_wiphy_init(wiphy);






 priv->hard_reset = hard_reset;
 priv->stop_fw = stop_fw;

 spin_lock_init(&priv->lock);
 priv->open = 0;
 priv->hw_unavailable = 1;


 INIT_WORK(&priv->reset_work, orinoco_reset);
 INIT_WORK(&priv->join_work, orinoco_join_ap);
 INIT_WORK(&priv->wevent_work, orinoco_send_wevents);

 INIT_LIST_HEAD(&priv->rx_list);
 tasklet_init(&priv->rx_tasklet, orinoco_rx_isr_tasklet,
       (unsigned long) priv);

 spin_lock_init(&priv->scan_lock);
 INIT_LIST_HEAD(&priv->scan_list);
 INIT_WORK(&priv->process_scan, orinoco_process_scan_results);

 priv->last_linkstatus = 0xffff;







 orinoco_register_pm_notifier(priv);

 return priv;
}
