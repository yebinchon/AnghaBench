
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em28xx {int devlist; } ;


 int em28xx_devlist ;
 int em28xx_devlist_mutex ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void em28xx_add_into_devlist(struct em28xx *dev)
{
 mutex_lock(&em28xx_devlist_mutex);
 list_add_tail(&dev->devlist, &em28xx_devlist);
 mutex_unlock(&em28xx_devlist_mutex);
}
