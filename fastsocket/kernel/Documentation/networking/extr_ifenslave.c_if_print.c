
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {char* ifr_name; } ;
struct ifconf {int ifc_len; char* ifc_buf; struct ifreq* ifc_req; } ;
typedef int buff ;


 int IFF_UP ;
 int SIOCGIFCONF ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ if_getconfig (char*) ;
 scalar_t__ ioctl (int ,int ,struct ifconf*) ;
 int mif_flags ;
 int opt_a ;
 int perror (char*) ;
 int skfd ;
 int stderr ;

__attribute__((used)) static void if_print(char *ifname)
{
 char buff[1024];
 struct ifconf ifc;
 struct ifreq *ifr;
 int i;

 if (ifname == (char *)((void*)0)) {
  ifc.ifc_len = sizeof(buff);
  ifc.ifc_buf = buff;
  if (ioctl(skfd, SIOCGIFCONF, &ifc) < 0) {
   perror("SIOCGIFCONF failed");
   return;
  }

  ifr = ifc.ifc_req;
  for (i = ifc.ifc_len / sizeof(struct ifreq); --i >= 0; ifr++) {
   if (if_getconfig(ifr->ifr_name) < 0) {
    fprintf(stderr,
     "%s: unknown interface.\n",
     ifr->ifr_name);
    continue;
   }

   if (((mif_flags & IFF_UP) == 0) && !opt_a) continue;

  }
 } else {
  if (if_getconfig(ifname) < 0) {
   fprintf(stderr,
    "%s: unknown interface.\n", ifname);
  }
 }
}
