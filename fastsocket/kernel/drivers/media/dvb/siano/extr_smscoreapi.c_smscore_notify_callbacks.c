
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smscore_device_t {int dummy; } ;
struct smscore_device_notifyee_t {int (* hotplug ) (struct smscore_device_t*,struct device*,int) ;} ;
struct list_head {struct list_head* next; } ;
struct device {int dummy; } ;


 struct list_head g_smscore_notifyees ;
 int stub1 (struct smscore_device_t*,struct device*,int) ;

__attribute__((used)) static int smscore_notify_callbacks(struct smscore_device_t *coredev,
        struct device *device, int arrival)
{
 struct list_head *next, *first;
 int rc = 0;



 first = &g_smscore_notifyees;

 for (next = first->next; next != first; next = next->next) {
  rc = ((struct smscore_device_notifyee_t *) next)->
    hotplug(coredev, device, arrival);
  if (rc < 0)
   break;
 }

 return rc;
}
