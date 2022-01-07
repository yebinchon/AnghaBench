
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sa_data; int sa_family; } ;
struct ifreq {TYPE_1__ ifr_addr; int ifr_name; } ;


 int AF_INET ;
 int IFNAMSIZ ;
 int SIOCGIFADDR ;
 int SIOCGIFBRDADDR ;
 int SIOCGIFDSTADDR ;
 int SIOCGIFNETMASK ;
 int SIOCSIFADDR ;
 int SIOCSIFBRDADDR ;
 int SIOCSIFDSTADDR ;
 int SIOCSIFNETMASK ;
 int errno ;
 int ioctl (int ,int,struct ifreq*) ;
 int memset (scalar_t__,int ,int) ;
 int skfd ;
 int strerror (int) ;
 int strncpy (int ,char*,int ) ;
 int v_print (char*,char*,char*,unsigned char,...) ;

__attribute__((used)) static int set_if_addr(char *master_ifname, char *slave_ifname)
{
 struct ifreq ifr;
 int res;
 unsigned char *ipaddr;
 int i;
 struct {
  char *req_name;
  char *desc;
  int g_ioctl;
  int s_ioctl;
 } ifra[] = {
  {"IFADDR", "addr", SIOCGIFADDR, SIOCSIFADDR},
  {"DSTADDR", "destination addr", SIOCGIFDSTADDR, SIOCSIFDSTADDR},
  {"BRDADDR", "broadcast addr", SIOCGIFBRDADDR, SIOCSIFBRDADDR},
  {"NETMASK", "netmask", SIOCGIFNETMASK, SIOCSIFNETMASK},
  {((void*)0), ((void*)0), 0, 0},
 };

 for (i = 0; ifra[i].req_name; i++) {
  strncpy(ifr.ifr_name, master_ifname, IFNAMSIZ);
  res = ioctl(skfd, ifra[i].g_ioctl, &ifr);
  if (res < 0) {
   int saved_errno = errno;

   v_print("Interface '%s': Error: SIOCG%s failed: %s\n",
    master_ifname, ifra[i].req_name,
    strerror(saved_errno));

   ifr.ifr_addr.sa_family = AF_INET;
   memset(ifr.ifr_addr.sa_data, 0,
          sizeof(ifr.ifr_addr.sa_data));
  }

  strncpy(ifr.ifr_name, slave_ifname, IFNAMSIZ);
  res = ioctl(skfd, ifra[i].s_ioctl, &ifr);
  if (res < 0) {
   int saved_errno = errno;

   v_print("Interface '%s': Error: SIOCS%s failed: %s\n",
    slave_ifname, ifra[i].req_name,
    strerror(saved_errno));

  }

  ipaddr = (unsigned char *)ifr.ifr_addr.sa_data;
  v_print("Interface '%s': set IP %s to %d.%d.%d.%d\n",
   slave_ifname, ifra[i].desc,
   ipaddr[0], ipaddr[1], ipaddr[2], ipaddr[3]);
 }

 return 0;
}
