
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int dummy; } ;
struct dentry {int dummy; } ;


 int DEBUGFS_ADD (int ,struct dentry*) ;
 int DEBUGFS_ADD_PREFIX (int ,int ,struct dentry*) ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int always ;
 int beacon_filtering ;
 int beacon_interval ;
 struct dentry* debugfs_create_dir (char*,struct dentry*) ;
 int dev ;
 int driver_state ;
 int dtim_interval ;
 int dynamic_ps_timeout ;
 int excessive_retries ;
 int forced_ps ;
 int fw_stats_raw ;
 int gpio_power ;
 int interval ;
 int irq_blk_threshold ;
 int irq_pkt_threshold ;
 int irq_timeout ;
 int mem ;
 int retry_count ;
 int rx_streaming ;
 int sleep_auth ;
 int split_scan_timeout ;
 int start_recovery ;
 int suspend_dtim_interval ;
 int tx_queue_len ;
 int vifs_state ;

__attribute__((used)) static int wl1271_debugfs_add_files(struct wl1271 *wl,
        struct dentry *rootdir)
{
 int ret = 0;
 struct dentry *entry, *streaming;

 DEBUGFS_ADD(tx_queue_len, rootdir);
 DEBUGFS_ADD(retry_count, rootdir);
 DEBUGFS_ADD(excessive_retries, rootdir);

 DEBUGFS_ADD(gpio_power, rootdir);
 DEBUGFS_ADD(start_recovery, rootdir);
 DEBUGFS_ADD(driver_state, rootdir);
 DEBUGFS_ADD(vifs_state, rootdir);
 DEBUGFS_ADD(dtim_interval, rootdir);
 DEBUGFS_ADD(suspend_dtim_interval, rootdir);
 DEBUGFS_ADD(beacon_interval, rootdir);
 DEBUGFS_ADD(beacon_filtering, rootdir);
 DEBUGFS_ADD(dynamic_ps_timeout, rootdir);
 DEBUGFS_ADD(forced_ps, rootdir);
 DEBUGFS_ADD(split_scan_timeout, rootdir);
 DEBUGFS_ADD(irq_pkt_threshold, rootdir);
 DEBUGFS_ADD(irq_blk_threshold, rootdir);
 DEBUGFS_ADD(irq_timeout, rootdir);
 DEBUGFS_ADD(fw_stats_raw, rootdir);
 DEBUGFS_ADD(sleep_auth, rootdir);

 streaming = debugfs_create_dir("rx_streaming", rootdir);
 if (!streaming || IS_ERR(streaming))
  goto err;

 DEBUGFS_ADD_PREFIX(rx_streaming, interval, streaming);
 DEBUGFS_ADD_PREFIX(rx_streaming, always, streaming);

 DEBUGFS_ADD_PREFIX(dev, mem, rootdir);

 return 0;

err:
 if (IS_ERR(entry))
  ret = PTR_ERR(entry);
 else
  ret = -ENOMEM;

 return ret;
}
