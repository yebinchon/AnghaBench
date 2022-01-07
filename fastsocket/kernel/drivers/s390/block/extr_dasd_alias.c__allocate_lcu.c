
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dasd_uid {int ssid; int serial; int vendor; } ;
struct ccw1 {int dummy; } ;
struct TYPE_6__ {int dwork; } ;
struct TYPE_5__ {int worker; } ;
struct TYPE_4__ {int ssid; int serial; int vendor; } ;
struct alias_lcu {int flags; struct alias_lcu* uac; struct alias_lcu* rsu_cqr; struct alias_lcu* cpaddr; int lcu_setup; int lock; TYPE_3__ ruac_data; TYPE_2__ suc_data; int grouplist; int active_devices; int inactive_devices; int lcu; int pav; TYPE_1__ uid; void* data; } ;


 int ENOMEM ;
 struct alias_lcu* ERR_PTR (int ) ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int NEED_UAC_UPDATE ;
 int NO_PAV ;
 int UPDATE_PENDING ;
 int init_completion (int *) ;
 int kfree (struct alias_lcu*) ;
 void* kzalloc (int,int) ;
 int lcu_update_work ;
 int memcpy (int ,int ,int) ;
 int spin_lock_init (int *) ;
 int summary_unit_check_handling_work ;

__attribute__((used)) static struct alias_lcu *_allocate_lcu(struct dasd_uid *uid)
{
 struct alias_lcu *lcu;

 lcu = kzalloc(sizeof(*lcu), GFP_KERNEL);
 if (!lcu)
  return ERR_PTR(-ENOMEM);
 lcu->uac = kzalloc(sizeof(*(lcu->uac)), GFP_KERNEL | GFP_DMA);
 if (!lcu->uac)
  goto out_err1;
 lcu->rsu_cqr = kzalloc(sizeof(*lcu->rsu_cqr), GFP_KERNEL | GFP_DMA);
 if (!lcu->rsu_cqr)
  goto out_err2;
 lcu->rsu_cqr->cpaddr = kzalloc(sizeof(struct ccw1),
           GFP_KERNEL | GFP_DMA);
 if (!lcu->rsu_cqr->cpaddr)
  goto out_err3;
 lcu->rsu_cqr->data = kzalloc(16, GFP_KERNEL | GFP_DMA);
 if (!lcu->rsu_cqr->data)
  goto out_err4;

 memcpy(lcu->uid.vendor, uid->vendor, sizeof(uid->vendor));
 memcpy(lcu->uid.serial, uid->serial, sizeof(uid->serial));
 lcu->uid.ssid = uid->ssid;
 lcu->pav = NO_PAV;
 lcu->flags = NEED_UAC_UPDATE | UPDATE_PENDING;
 INIT_LIST_HEAD(&lcu->lcu);
 INIT_LIST_HEAD(&lcu->inactive_devices);
 INIT_LIST_HEAD(&lcu->active_devices);
 INIT_LIST_HEAD(&lcu->grouplist);
 INIT_WORK(&lcu->suc_data.worker, summary_unit_check_handling_work);
 INIT_DELAYED_WORK(&lcu->ruac_data.dwork, lcu_update_work);
 spin_lock_init(&lcu->lock);
 init_completion(&lcu->lcu_setup);
 return lcu;

out_err4:
 kfree(lcu->rsu_cqr->cpaddr);
out_err3:
 kfree(lcu->rsu_cqr);
out_err2:
 kfree(lcu->uac);
out_err1:
 kfree(lcu);
 return ERR_PTR(-ENOMEM);
}
