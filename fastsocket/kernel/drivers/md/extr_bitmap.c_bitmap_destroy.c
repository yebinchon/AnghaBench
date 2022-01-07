
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mutex; } ;
struct mddev {TYPE_2__* thread; TYPE_1__ bitmap_info; struct bitmap* bitmap; } ;
struct bitmap {scalar_t__ sysfs_can_clear; } ;
struct TYPE_4__ {int timeout; } ;


 int MAX_SCHEDULE_TIMEOUT ;
 int bitmap_free (struct bitmap*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sysfs_put (scalar_t__) ;

void bitmap_destroy(struct mddev *mddev)
{
 struct bitmap *bitmap = mddev->bitmap;

 if (!bitmap)
  return;

 mutex_lock(&mddev->bitmap_info.mutex);
 mddev->bitmap = ((void*)0);
 mutex_unlock(&mddev->bitmap_info.mutex);
 if (mddev->thread)
  mddev->thread->timeout = MAX_SCHEDULE_TIMEOUT;

 if (bitmap->sysfs_can_clear)
  sysfs_put(bitmap->sysfs_can_clear);

 bitmap_free(bitmap);
}
