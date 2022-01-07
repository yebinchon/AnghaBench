
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_notification {int vi; int di; } ;
struct ubi_device {int vtbl_slots; int device_mutex; int * volumes; } ;
struct notifier_block {int (* notifier_call ) (struct notifier_block*,int,struct ubi_notification*) ;} ;


 int blocking_notifier_call_chain (int *,int,struct ubi_notification*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct notifier_block*,int,struct ubi_notification*) ;
 int ubi_do_get_device_info (struct ubi_device*,int *) ;
 int ubi_do_get_volume_info (struct ubi_device*,int ,int *) ;
 int ubi_notifiers ;

int ubi_notify_all(struct ubi_device *ubi, int ntype, struct notifier_block *nb)
{
 struct ubi_notification nt;
 int i, count = 0;

 ubi_do_get_device_info(ubi, &nt.di);

 mutex_lock(&ubi->device_mutex);
 for (i = 0; i < ubi->vtbl_slots; i++) {





  if (!ubi->volumes[i])
   continue;

  ubi_do_get_volume_info(ubi, ubi->volumes[i], &nt.vi);
  if (nb)
   nb->notifier_call(nb, ntype, &nt);
  else
   blocking_notifier_call_chain(&ubi_notifiers, ntype,
           &nt);
  count += 1;
 }
 mutex_unlock(&ubi->device_mutex);

 return count;
}
