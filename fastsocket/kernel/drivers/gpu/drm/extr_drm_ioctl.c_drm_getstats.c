
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct drm_stats {int count; TYPE_4__* data; } ;
struct drm_file {TYPE_3__* master; } ;
struct drm_device {int counters; scalar_t__* types; int * counts; } ;
struct TYPE_8__ {scalar_t__ type; int value; } ;
struct TYPE_6__ {TYPE_1__* hw_lock; } ;
struct TYPE_7__ {TYPE_2__ lock; } ;
struct TYPE_5__ {int lock; } ;


 scalar_t__ _DRM_STAT_LOCK ;
 int atomic_read (int *) ;
 int memset (struct drm_stats*,int ,int) ;

int drm_getstats(struct drm_device *dev, void *data,
   struct drm_file *file_priv)
{
 struct drm_stats *stats = data;
 int i;

 memset(stats, 0, sizeof(*stats));

 for (i = 0; i < dev->counters; i++) {
  if (dev->types[i] == _DRM_STAT_LOCK)
   stats->data[i].value =
       (file_priv->master->lock.hw_lock ? file_priv->master->lock.hw_lock->lock : 0);
  else
   stats->data[i].value = atomic_read(&dev->counts[i]);
  stats->data[i].type = dev->types[i];
 }

 stats->count = dev->counters;

 return 0;
}
