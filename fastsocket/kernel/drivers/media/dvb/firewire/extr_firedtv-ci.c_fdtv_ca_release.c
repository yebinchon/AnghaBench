
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firedtv {scalar_t__ cadev; } ;


 int dvb_unregister_device (scalar_t__) ;

void fdtv_ca_release(struct firedtv *fdtv)
{
 if (fdtv->cadev)
  dvb_unregister_device(fdtv->cadev);
}
