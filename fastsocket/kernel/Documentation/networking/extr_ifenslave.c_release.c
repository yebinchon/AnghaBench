
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifreq {int ifr_slave; int ifr_name; } ;
struct TYPE_2__ {int ifr_flags; } ;


 int BOND_RELEASE_OLD ;
 int IFF_SLAVE ;
 int IFNAMSIZ ;
 int SIOCBONDRELEASE ;
 int abi_ver ;
 int errno ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ ioctl (int ,int ,struct ifreq*) ;
 int saved_errno ;
 int set_if_down (char*,int) ;
 int set_slave_mtu (char*,int) ;
 int skfd ;
 TYPE_1__ slave_flags ;
 int stderr ;
 int strerror (int ) ;
 int strncpy (int ,char*,int ) ;
 int v_print (char*,char*,int ) ;

__attribute__((used)) static int release(char *master_ifname, char *slave_ifname)
{
 struct ifreq ifr;
 int res = 0;

 if (!(slave_flags.ifr_flags & IFF_SLAVE)) {
  fprintf(stderr,
   "Illegal operation: The specified slave interface "
   "'%s' is not a slave\n",
   slave_ifname);
  return 1;
 }

 strncpy(ifr.ifr_name, master_ifname, IFNAMSIZ);
 strncpy(ifr.ifr_slave, slave_ifname, IFNAMSIZ);
 if ((ioctl(skfd, SIOCBONDRELEASE, &ifr) < 0) &&
     (ioctl(skfd, BOND_RELEASE_OLD, &ifr) < 0)) {
  saved_errno = errno;
  v_print("Master '%s': Error: SIOCBONDRELEASE failed: %s\n",
   master_ifname, strerror(saved_errno));
  return 1;
 } else if (abi_ver < 1) {



  res = set_if_down(slave_ifname, slave_flags.ifr_flags);
  if (res) {
   fprintf(stderr,
    "Slave '%s': Error: bring interface "
    "down failed\n",
    slave_ifname);
  }
 }


 set_slave_mtu(slave_ifname, 1500);

 return res;
}
