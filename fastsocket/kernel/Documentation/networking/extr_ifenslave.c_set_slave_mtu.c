
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int ifr_mtu; int ifr_name; } ;


 int IFNAMSIZ ;
 int SIOCSIFMTU ;
 int errno ;
 int ioctl (int ,int ,struct ifreq*) ;
 int saved_errno ;
 int skfd ;
 int strerror (int ) ;
 int strncpy (int ,char*,int ) ;
 int v_print (char*,char*,int) ;

__attribute__((used)) static int set_slave_mtu(char *slave_ifname, int mtu)
{
 struct ifreq ifr;
 int res = 0;

 ifr.ifr_mtu = mtu;
 strncpy(ifr.ifr_name, slave_ifname, IFNAMSIZ);

 res = ioctl(skfd, SIOCSIFMTU, &ifr);
 if (res < 0) {
  saved_errno = errno;
  v_print("Slave '%s': Error: SIOCSIFMTU failed: %s\n",
   slave_ifname, strerror(saved_errno));
 } else {
  v_print("Slave '%s': MTU set to %d.\n", slave_ifname, mtu);
 }

 return res;
}
