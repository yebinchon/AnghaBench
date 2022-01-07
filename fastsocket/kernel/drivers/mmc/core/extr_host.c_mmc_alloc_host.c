
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int notifier_call; } ;
struct TYPE_5__ {int * class; struct device* parent; } ;
struct mmc_host {int max_hw_segs; int max_phys_segs; int max_seg_size; int max_req_size; int max_blk_size; int max_blk_count; TYPE_1__ pm_notify; int disable; int detect; int wq; int lock; TYPE_2__ class_dev; struct device* parent; int index; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_DELAYED_WORK_DEFERRABLE (int *,int ) ;
 int PAGE_CACHE_SIZE ;
 int dev_set_name (TYPE_2__*,char*,int ) ;
 int device_initialize (TYPE_2__*) ;
 int idr_get_new (int *,struct mmc_host*,int *) ;
 int idr_pre_get (int *,int ) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct mmc_host*) ;
 struct mmc_host* kzalloc (int,int ) ;
 int mmc_host_class ;
 int mmc_host_deeper_disable ;
 int mmc_host_idr ;
 int mmc_host_lock ;
 int mmc_pm_notify ;
 int mmc_rescan ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;

struct mmc_host *mmc_alloc_host(int extra, struct device *dev)
{
 int err;
 struct mmc_host *host;

 if (!idr_pre_get(&mmc_host_idr, GFP_KERNEL))
  return ((void*)0);

 host = kzalloc(sizeof(struct mmc_host) + extra, GFP_KERNEL);
 if (!host)
  return ((void*)0);

 spin_lock(&mmc_host_lock);
 err = idr_get_new(&mmc_host_idr, host, &host->index);
 spin_unlock(&mmc_host_lock);
 if (err)
  goto free;

 dev_set_name(&host->class_dev, "mmc%d", host->index);

 host->parent = dev;
 host->class_dev.parent = dev;
 host->class_dev.class = &mmc_host_class;
 device_initialize(&host->class_dev);

 spin_lock_init(&host->lock);
 init_waitqueue_head(&host->wq);
 INIT_DELAYED_WORK(&host->detect, mmc_rescan);
 INIT_DELAYED_WORK_DEFERRABLE(&host->disable, mmc_host_deeper_disable);
 host->pm_notify.notifier_call = mmc_pm_notify;






 host->max_hw_segs = 1;
 host->max_phys_segs = 1;
 host->max_seg_size = PAGE_CACHE_SIZE;

 host->max_req_size = PAGE_CACHE_SIZE;
 host->max_blk_size = 512;
 host->max_blk_count = PAGE_CACHE_SIZE / 512;

 return host;

free:
 kfree(host);
 return ((void*)0);
}
