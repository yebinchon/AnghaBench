
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int state; } ;
struct atm_vcc {int dummy; } ;




 struct atm_vcc* ATM_SD (struct socket*) ;
 int CAP_NET_ADMIN ;
 int ENOIOCTLCMD ;
 int EPERM ;

 int SS_CONNECTED ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 int atmtcp_attach (struct atm_vcc*,int) ;
 int atmtcp_create_persistent (int) ;
 int atmtcp_remove_persistent (int) ;
 int capable (int ) ;

__attribute__((used)) static int atmtcp_ioctl(struct socket *sock, unsigned int cmd, unsigned long arg)
{
 int err = 0;
 struct atm_vcc *vcc = ATM_SD(sock);

 if (cmd != 128 && cmd != 130 && cmd != 129)
  return -ENOIOCTLCMD;

 if (!capable(CAP_NET_ADMIN))
  return -EPERM;

 switch (cmd) {
  case 128:
   err = atmtcp_attach(vcc, (int) arg);
   if (err >= 0) {
    sock->state = SS_CONNECTED;
    __module_get(THIS_MODULE);
   }
   break;
  case 130:
   err = atmtcp_create_persistent((int) arg);
   break;
  case 129:
   err = atmtcp_remove_persistent((int) arg);
   break;
 }
 return err;
}
