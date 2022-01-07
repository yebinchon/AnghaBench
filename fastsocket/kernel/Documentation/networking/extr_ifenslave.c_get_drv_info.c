
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {scalar_t__ ifr_data; int ifr_name; } ;
struct ethtool_drvinfo {int fw_version; int driver; int cmd; } ;
typedef int ifr ;
typedef scalar_t__ caddr_t ;


 int BOND_ABI_VERSION ;
 scalar_t__ EOPNOTSUPP ;
 int ETHTOOL_GDRVINFO ;
 int IFNAMSIZ ;
 int SIOCETHTOOL ;
 char* abi_ver ;
 scalar_t__ errno ;
 scalar_t__ ioctl (int ,int ,struct ifreq*) ;
 int memset (struct ifreq*,int ,int) ;
 scalar_t__ saved_errno ;
 int skfd ;
 int snprintf (int ,int,char*,int) ;
 int strerror (scalar_t__) ;
 int strncpy (int ,char*,int) ;
 char* strtoul (int ,char**,int ) ;
 int v_print (char*,char*,...) ;

__attribute__((used)) static int get_drv_info(char *master_ifname)
{
 struct ifreq ifr;
 struct ethtool_drvinfo info;
 char *endptr;

 memset(&ifr, 0, sizeof(ifr));
 strncpy(ifr.ifr_name, master_ifname, IFNAMSIZ);
 ifr.ifr_data = (caddr_t)&info;

 info.cmd = ETHTOOL_GDRVINFO;
 strncpy(info.driver, "ifenslave", 32);
 snprintf(info.fw_version, 32, "%d", BOND_ABI_VERSION);

 if (ioctl(skfd, SIOCETHTOOL, &ifr) < 0) {
  if (errno == EOPNOTSUPP) {
   goto out;
  }

  saved_errno = errno;
  v_print("Master '%s': Error: get bonding info failed %s\n",
   master_ifname, strerror(saved_errno));
  return 1;
 }

 abi_ver = strtoul(info.fw_version, &endptr, 0);
 if (*endptr) {
                v_print("Master '%s': Error: got invalid string as an ABI "
   "version from the bonding module\n",
   master_ifname);
  return 1;
 }

out:
 v_print("ABI ver is %d\n", abi_ver);

 return 0;
}
