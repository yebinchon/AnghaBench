
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int fwlog_size; int hw; int * priv; int freezable_wq; int * tx_res_if; int * fw_status_1; int * nvs; int fw_type; int * fw; int aggr_buf_size; scalar_t__ aggr_buf; int dummy_packet; scalar_t__ fwlog; int * mbox; int * buffer_32; int dev; int mutex; int fwlog_waitq; } ;


 int WL12XX_FW_TYPE_NONE ;
 int destroy_workqueue (int ) ;
 int dev_attr_bt_coex_state ;
 int dev_attr_hw_pg_ver ;
 int dev_kfree_skb (int ) ;
 int device_remove_bin_file (int ,int *) ;
 int device_remove_file (int ,int *) ;
 int free_page (unsigned long) ;
 int free_pages (unsigned long,int ) ;
 int fwlog_attr ;
 int get_order (int ) ;
 int ieee80211_free_hw (int ) ;
 int kfree (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vfree (int *) ;
 int wake_up_interruptible_all (int *) ;
 int wl1271_debugfs_exit (struct wl1271*) ;

int wlcore_free_hw(struct wl1271 *wl)
{

 mutex_lock(&wl->mutex);
 wl->fwlog_size = -1;
 wake_up_interruptible_all(&wl->fwlog_waitq);
 mutex_unlock(&wl->mutex);

 device_remove_bin_file(wl->dev, &fwlog_attr);

 device_remove_file(wl->dev, &dev_attr_hw_pg_ver);

 device_remove_file(wl->dev, &dev_attr_bt_coex_state);
 kfree(wl->buffer_32);
 kfree(wl->mbox);
 free_page((unsigned long)wl->fwlog);
 dev_kfree_skb(wl->dummy_packet);
 free_pages((unsigned long)wl->aggr_buf, get_order(wl->aggr_buf_size));

 wl1271_debugfs_exit(wl);

 vfree(wl->fw);
 wl->fw = ((void*)0);
 wl->fw_type = WL12XX_FW_TYPE_NONE;
 kfree(wl->nvs);
 wl->nvs = ((void*)0);

 kfree(wl->fw_status_1);
 kfree(wl->tx_res_if);
 destroy_workqueue(wl->freezable_wq);

 kfree(wl->priv);
 ieee80211_free_hw(wl->hw);

 return 0;
}
