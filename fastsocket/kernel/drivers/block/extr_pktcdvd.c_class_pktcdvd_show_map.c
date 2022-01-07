
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pktcdvd_device {char* name; TYPE_1__* bdev; int pkt_dev; } ;
struct class {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int bd_dev; } ;


 int MAJOR (int ) ;
 int MAX_WRITERS ;
 int MINOR (int ) ;
 int SINGLE_DEPTH_NESTING ;
 int ctl_mutex ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 struct pktcdvd_device** pkt_devs ;
 scalar_t__ sprintf (char*,char*,char*,int,int,int,int) ;

__attribute__((used)) static ssize_t class_pktcdvd_show_map(struct class *c, char *data)
{
 int n = 0;
 int idx;
 mutex_lock_nested(&ctl_mutex, SINGLE_DEPTH_NESTING);
 for (idx = 0; idx < MAX_WRITERS; idx++) {
  struct pktcdvd_device *pd = pkt_devs[idx];
  if (!pd)
   continue;
  n += sprintf(data+n, "%s %u:%u %u:%u\n",
   pd->name,
   MAJOR(pd->pkt_dev), MINOR(pd->pkt_dev),
   MAJOR(pd->bdev->bd_dev),
   MINOR(pd->bdev->bd_dev));
 }
 mutex_unlock(&ctl_mutex);
 return n;
}
