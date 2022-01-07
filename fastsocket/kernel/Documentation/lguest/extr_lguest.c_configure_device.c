
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_family; } ;
struct ifreq {int ifr_flags; int ifr_name; int ifr_addr; } ;
typedef int ifr ;


 int AF_INET ;
 int IFF_UP ;
 int SIOCSIFADDR ;
 int SIOCSIFFLAGS ;
 int err (int,char*,char const*) ;
 int htonl (int ) ;
 scalar_t__ ioctl (int,int ,struct ifreq*) ;
 int memset (struct ifreq*,int ,int) ;
 int strcpy (int ,char const*) ;

__attribute__((used)) static void configure_device(int fd, const char *tapif, u32 ipaddr)
{
 struct ifreq ifr;
 struct sockaddr_in *sin = (struct sockaddr_in *)&ifr.ifr_addr;

 memset(&ifr, 0, sizeof(ifr));
 strcpy(ifr.ifr_name, tapif);


 sin->sin_family = AF_INET;
 sin->sin_addr.s_addr = htonl(ipaddr);
 if (ioctl(fd, SIOCSIFADDR, &ifr) != 0)
  err(1, "Setting %s interface address", tapif);
 ifr.ifr_flags = IFF_UP;
 if (ioctl(fd, SIOCSIFFLAGS, &ifr) != 0)
  err(1, "Bringing interface %s up", tapif);
}
