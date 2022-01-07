
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifreq {int ifr_slave; int ifr_name; } ;
struct TYPE_2__ {int ifr_flags; } ;


 int BOND_CHANGE_ACTIVE_OLD ;
 int IFF_SLAVE ;
 int IFNAMSIZ ;
 int SIOCBONDCHANGEACTIVE ;
 int errno ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ ioctl (int ,int ,struct ifreq*) ;
 int saved_errno ;
 int skfd ;
 TYPE_1__ slave_flags ;
 int stderr ;
 int strerror (int ) ;
 int strncpy (int ,char*,int ) ;
 int v_print (char*,char*,int ) ;

__attribute__((used)) static int change_active(char *master_ifname, char *slave_ifname)
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
 if ((ioctl(skfd, SIOCBONDCHANGEACTIVE, &ifr) < 0) &&
     (ioctl(skfd, BOND_CHANGE_ACTIVE_OLD, &ifr) < 0)) {
  saved_errno = errno;
  v_print("Master '%s': Error: SIOCBONDCHANGEACTIVE failed: "
   "%s\n",
   master_ifname, strerror(saved_errno));
  res = 1;
 }

 return res;
}
