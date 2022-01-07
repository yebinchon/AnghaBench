
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int ifr_flags; int ifr_name; } ;
typedef int ifr ;


 int IFF_NO_PI ;
 int IFF_TAP ;
 int IFF_VNET_HDR ;
 int IFNAMSIZ ;
 int O_RDWR ;
 int TUNSETIFF ;
 int TUNSETNOCSUM ;
 int TUNSETOFFLOAD ;
 int TUN_F_CSUM ;
 int TUN_F_TSO4 ;
 int TUN_F_TSO6 ;
 int TUN_F_TSO_ECN ;
 int err (int,char*) ;
 scalar_t__ ioctl (int,int ,...) ;
 int memcpy (char*,int ,int ) ;
 int memset (struct ifreq*,int ,int) ;
 int open_or_die (char*,int ) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int get_tun_device(char tapif[IFNAMSIZ])
{
 struct ifreq ifr;
 int netfd;


 memset(&ifr, 0, sizeof(ifr));







 netfd = open_or_die("/dev/net/tun", O_RDWR);
 ifr.ifr_flags = IFF_TAP | IFF_NO_PI | IFF_VNET_HDR;
 strcpy(ifr.ifr_name, "tap%d");
 if (ioctl(netfd, TUNSETIFF, &ifr) != 0)
  err(1, "configuring /dev/net/tun");

 if (ioctl(netfd, TUNSETOFFLOAD,
    TUN_F_CSUM|TUN_F_TSO4|TUN_F_TSO6|TUN_F_TSO_ECN) != 0)
  err(1, "Could not set features for tun device");





 ioctl(netfd, TUNSETNOCSUM, 1);

 memcpy(tapif, ifr.ifr_name, IFNAMSIZ);
 return netfd;
}
