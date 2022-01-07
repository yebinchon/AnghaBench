
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {scalar_t__ sa_data; } ;
struct ifreq {int ifr_hwaddr; int ifr_name; } ;


 int IFNAMSIZ ;
 int SIOCSIFHWADDR ;
 int errno ;
 int ioctl (int ,int ,struct ifreq*) ;
 int memcpy (int *,struct sockaddr*,int) ;
 int saved_errno ;
 int skfd ;
 int strerror (int ) ;
 int strncpy (int ,char*,int ) ;
 int v_print (char*,char*,unsigned char,...) ;

__attribute__((used)) static int set_master_hwaddr(char *master_ifname, struct sockaddr *hwaddr)
{
 unsigned char *addr = (unsigned char *)hwaddr->sa_data;
 struct ifreq ifr;
 int res = 0;

 strncpy(ifr.ifr_name, master_ifname, IFNAMSIZ);
 memcpy(&(ifr.ifr_hwaddr), hwaddr, sizeof(struct sockaddr));
 res = ioctl(skfd, SIOCSIFHWADDR, &ifr);
 if (res < 0) {
  saved_errno = errno;
  v_print("Master '%s': Error: SIOCSIFHWADDR failed: %s\n",
   master_ifname, strerror(saved_errno));
  return res;
 } else {
  v_print("Master '%s': hardware address set to "
   "%2.2x:%2.2x:%2.2x:%2.2x:%2.2x:%2.2x.\n",
   master_ifname, addr[0], addr[1], addr[2],
   addr[3], addr[4], addr[5]);
 }

 return res;
}
