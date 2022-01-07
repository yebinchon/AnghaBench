
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvd {int uvd_used; int * dev; int lock; } ;
struct usbvideo {int num_cameras; int lock; struct uvd* cam; } ;


 int err (char*) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int usbvideo_find_struct(struct usbvideo *cams)
{
 int u, rv = -1;

 if (cams == ((void*)0)) {
  err("No usbvideo handle?");
  return -1;
 }
 mutex_lock(&cams->lock);
 for (u = 0; u < cams->num_cameras; u++) {
  struct uvd *uvd = &cams->cam[u];
  if (!uvd->uvd_used)
  {
   uvd->uvd_used = 1;
   mutex_init(&uvd->lock);
   uvd->dev = ((void*)0);
   rv = u;
   break;
  }
 }
 mutex_unlock(&cams->lock);
 return rv;
}
