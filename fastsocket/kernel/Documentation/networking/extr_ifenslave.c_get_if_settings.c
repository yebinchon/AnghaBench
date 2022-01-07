
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dev_ifr {int req_name; TYPE_1__* req_ifr; int req_type; } ;
struct TYPE_2__ {int ifr_name; } ;


 int IFNAMSIZ ;
 int errno ;
 int ioctl (int ,int ,TYPE_1__*) ;
 int saved_errno ;
 int skfd ;
 int strerror (int) ;
 int strncpy (int ,char*,int ) ;
 int v_print (char*,char*,int ,int ) ;

__attribute__((used)) static int get_if_settings(char *ifname, struct dev_ifr ifra[])
{
 int i;
 int res = 0;

 for (i = 0; ifra[i].req_ifr; i++) {
  strncpy(ifra[i].req_ifr->ifr_name, ifname, IFNAMSIZ);
  res = ioctl(skfd, ifra[i].req_type, ifra[i].req_ifr);
  if (res < 0) {
   saved_errno = errno;
   v_print("Interface '%s': Error: %s failed: %s\n",
    ifname, ifra[i].req_name,
    strerror(saved_errno));

   return saved_errno;
  }
 }

 return 0;
}
