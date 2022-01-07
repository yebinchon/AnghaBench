
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sa_data; int sa_family; } ;
struct ifreq {TYPE_1__ ifr_addr; int ifr_name; } ;


 int AF_INET ;
 int IFNAMSIZ ;
 int SIOCSIFADDR ;
 int errno ;
 int ioctl (int ,int ,struct ifreq*) ;
 int memset (int ,int ,int) ;
 int saved_errno ;
 int skfd ;
 int strerror (int ) ;
 int strncpy (int ,char*,int ) ;
 int v_print (char*,char*,...) ;

__attribute__((used)) static int clear_if_addr(char *ifname)
{
 struct ifreq ifr;
 int res = 0;

 strncpy(ifr.ifr_name, ifname, IFNAMSIZ);
 ifr.ifr_addr.sa_family = AF_INET;
 memset(ifr.ifr_addr.sa_data, 0, sizeof(ifr.ifr_addr.sa_data));

 res = ioctl(skfd, SIOCSIFADDR, &ifr);
 if (res < 0) {
  saved_errno = errno;
  v_print("Interface '%s': Error: SIOCSIFADDR failed: %s\n",
   ifname, strerror(saved_errno));
 } else {
  v_print("Interface '%s': address cleared\n", ifname);
 }

 return res;
}
