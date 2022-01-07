
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firedtv {int ca_last_command; int device; } ;
struct ca_msg {int* msg; } ;


 int EFAULT ;




 int avc_ca_enter_menu (struct firedtv*) ;
 int dev_err (int ,char*,int) ;
 int fdtv_ca_pmt (struct firedtv*,void*) ;

__attribute__((used)) static int fdtv_ca_send_msg(struct firedtv *fdtv, void *arg)
{
 struct ca_msg *msg = arg;
 int err;


 fdtv->ca_last_command =
  (msg->msg[0] << 16) + (msg->msg[1] << 8) + msg->msg[2];
 switch (fdtv->ca_last_command) {
 case 129:
  err = fdtv_ca_pmt(fdtv, arg);
  break;
 case 131:

  err = 0;
  break;
 case 130:

  err = 0;
  break;
 case 128:
  err = avc_ca_enter_menu(fdtv);
  break;
 default:
  dev_err(fdtv->device, "unhandled CA message 0x%08x\n",
   fdtv->ca_last_command);
  err = -EFAULT;
 }
 return err;
}
