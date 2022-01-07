
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_ioread {int mutex; int enabled; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pvr2_ioread_start (struct pvr2_ioread*) ;
 int pvr2_ioread_stop (struct pvr2_ioread*) ;

int pvr2_ioread_set_enabled(struct pvr2_ioread *cp,int fl)
{
 int ret = 0;
 if ((!fl) == (!(cp->enabled))) return ret;

 mutex_lock(&cp->mutex); do {
  if (fl) {
   ret = pvr2_ioread_start(cp);
  } else {
   pvr2_ioread_stop(cp);
  }
 } while (0); mutex_unlock(&cp->mutex);
 return ret;
}
