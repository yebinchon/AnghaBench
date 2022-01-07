
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {char* ifr_name; int ifr_ifindex; } ;


 int IFNAMSIZ ;
 int SIOCBRADDIF ;
 int err (int,char*,char const*,char const*) ;
 int errx (int,char*,...) ;
 int if_nametoindex (char const*) ;
 scalar_t__ ioctl (int,int ,struct ifreq*) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static void add_to_bridge(int fd, const char *if_name, const char *br_name)
{
 int ifidx;
 struct ifreq ifr;

 if (!*br_name)
  errx(1, "must specify bridge name");

 ifidx = if_nametoindex(if_name);
 if (!ifidx)
  errx(1, "interface %s does not exist!", if_name);

 strncpy(ifr.ifr_name, br_name, IFNAMSIZ);
 ifr.ifr_name[IFNAMSIZ-1] = '\0';
 ifr.ifr_ifindex = ifidx;
 if (ioctl(fd, SIOCBRADDIF, &ifr) < 0)
  err(1, "can't add %s to bridge %s", if_name, br_name);
}
