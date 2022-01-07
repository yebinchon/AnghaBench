
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firedtv_tuner_status {int ca_mmi; } ;
struct firedtv {int ca_last_command; int device; } ;


 int EFAULT ;


 int avc_tuner_status (struct firedtv*,struct firedtv_tuner_status*) ;
 int dev_info (int ,char*,int) ;
 int fdtv_ca_app_info (struct firedtv*,void*) ;
 int fdtv_ca_get_mmi (struct firedtv*,void*) ;
 int fdtv_ca_info (struct firedtv*,void*) ;

__attribute__((used)) static int fdtv_ca_get_msg(struct firedtv *fdtv, void *arg)
{
 struct firedtv_tuner_status stat;
 int err;

 switch (fdtv->ca_last_command) {
 case 129:
  err = fdtv_ca_app_info(fdtv, arg);
  break;
 case 128:
  err = fdtv_ca_info(fdtv, arg);
  break;
 default:
  if (avc_tuner_status(fdtv, &stat))
   err = -EFAULT;
  else if (stat.ca_mmi == 1)
   err = fdtv_ca_get_mmi(fdtv, arg);
  else {
   dev_info(fdtv->device, "unhandled CA message 0x%08x\n",
     fdtv->ca_last_command);
   err = -EFAULT;
  }
 }
 fdtv->ca_last_command = 0;
 return err;
}
