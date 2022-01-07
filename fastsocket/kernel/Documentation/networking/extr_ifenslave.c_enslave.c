
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ifreq {int ifr_slave; int ifr_name; } ;
struct TYPE_12__ {int ifr_flags; } ;
struct TYPE_11__ {int ifr_hwaddr; } ;
struct TYPE_10__ {scalar_t__ ifr_mtu; } ;
struct TYPE_9__ {int ifr_flags; } ;
struct TYPE_8__ {int ifr_hwaddr; } ;
struct TYPE_7__ {scalar_t__ ifr_mtu; } ;


 int BOND_ENSLAVE_OLD ;
 int IFF_SLAVE ;
 int IFNAMSIZ ;
 int SIOCBONDENSLAVE ;
 int abi_ver ;
 int clear_if_addr (char*) ;
 int errno ;
 int fprintf (int ,char*,char*) ;
 int hwaddr_set ;
 scalar_t__ ioctl (int ,int ,struct ifreq*) ;
 TYPE_6__ master_flags ;
 TYPE_5__ master_hwaddr ;
 TYPE_4__ master_mtu ;
 int saved_errno ;
 int set_if_addr (char*,char*) ;
 int set_if_down (char*,int) ;
 int set_if_up (char*,int) ;
 int set_master_hwaddr (char*,int *) ;
 int set_slave_hwaddr (char*,int *) ;
 int set_slave_mtu (char*,scalar_t__) ;
 int skfd ;
 TYPE_3__ slave_flags ;
 TYPE_2__ slave_hwaddr ;
 TYPE_1__ slave_mtu ;
 int stderr ;
 int strerror (int ) ;
 int strncpy (int ,char*,int ) ;
 int v_print (char*,char*,int ) ;

__attribute__((used)) static int enslave(char *master_ifname, char *slave_ifname)
{
 struct ifreq ifr;
 int res = 0;

 if (slave_flags.ifr_flags & IFF_SLAVE) {
  fprintf(stderr,
   "Illegal operation: The specified slave interface "
   "'%s' is already a slave\n",
   slave_ifname);
  return 1;
 }

 res = set_if_down(slave_ifname, slave_flags.ifr_flags);
 if (res) {
  fprintf(stderr,
   "Slave '%s': Error: bring interface down failed\n",
   slave_ifname);
  return res;
 }

 if (abi_ver < 2) {



  set_if_addr(master_ifname, slave_ifname);
 } else {
  res = clear_if_addr(slave_ifname);
  if (res) {
   fprintf(stderr,
    "Slave '%s': Error: clear address failed\n",
    slave_ifname);
   return res;
  }
 }

 if (master_mtu.ifr_mtu != slave_mtu.ifr_mtu) {
  res = set_slave_mtu(slave_ifname, master_mtu.ifr_mtu);
  if (res) {
   fprintf(stderr,
    "Slave '%s': Error: set MTU failed\n",
    slave_ifname);
   return res;
  }
 }

 if (hwaddr_set) {



  if (abi_ver < 1) {




   res = set_slave_hwaddr(slave_ifname,
            &(master_hwaddr.ifr_hwaddr));
   if (res) {
    fprintf(stderr,
     "Slave '%s': Error: set hw address "
     "failed\n",
     slave_ifname);
    goto undo_mtu;
   }




   res = set_if_up(slave_ifname, slave_flags.ifr_flags);
   if (res) {
    fprintf(stderr,
     "Slave '%s': Error: bring interface "
     "down failed\n",
     slave_ifname);
    goto undo_slave_mac;
   }
  }





 } else {



  if (abi_ver < 1) {



   res = set_if_down(master_ifname, master_flags.ifr_flags);
   if (res) {
    fprintf(stderr,
     "Master '%s': Error: bring interface "
     "down failed\n",
     master_ifname);
    goto undo_mtu;
   }
  }

  res = set_master_hwaddr(master_ifname,
     &(slave_hwaddr.ifr_hwaddr));
  if (res) {
   fprintf(stderr,
    "Master '%s': Error: set hw address "
    "failed\n",
    master_ifname);
   goto undo_mtu;
  }

  if (abi_ver < 1) {



   res = set_if_up(master_ifname, master_flags.ifr_flags);
   if (res) {
    fprintf(stderr,
     "Master '%s': Error: bring interface "
     "up failed\n",
     master_ifname);
    goto undo_master_mac;
   }
  }

  hwaddr_set = 1;
 }


 strncpy(ifr.ifr_name, master_ifname, IFNAMSIZ);
 strncpy(ifr.ifr_slave, slave_ifname, IFNAMSIZ);
 if ((ioctl(skfd, SIOCBONDENSLAVE, &ifr) < 0) &&
     (ioctl(skfd, BOND_ENSLAVE_OLD, &ifr) < 0)) {
  saved_errno = errno;
  v_print("Master '%s': Error: SIOCBONDENSLAVE failed: %s\n",
   master_ifname, strerror(saved_errno));
  res = 1;
 }

 if (res) {
  goto undo_master_mac;
 }

 return 0;


undo_master_mac:
 set_master_hwaddr(master_ifname, &(master_hwaddr.ifr_hwaddr));
 hwaddr_set = 0;
 goto undo_mtu;
undo_slave_mac:
 set_slave_hwaddr(slave_ifname, &(slave_hwaddr.ifr_hwaddr));
undo_mtu:
 set_slave_mtu(slave_ifname, slave_mtu.ifr_mtu);
 return res;
}
