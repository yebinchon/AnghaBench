
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {short ifr_flags; int ifr_name; } ;


 int IFNAMSIZ ;
 int SIOCSIFFLAGS ;
 int errno ;
 int ioctl (int ,int ,struct ifreq*) ;
 int saved_errno ;
 int skfd ;
 short strerror (int ) ;
 int strncpy (int ,char*,int ) ;
 int v_print (char*,char*,short) ;

__attribute__((used)) static int set_if_flags(char *ifname, short flags)
{
 struct ifreq ifr;
 int res = 0;

 ifr.ifr_flags = flags;
 strncpy(ifr.ifr_name, ifname, IFNAMSIZ);

 res = ioctl(skfd, SIOCSIFFLAGS, &ifr);
 if (res < 0) {
  saved_errno = errno;
  v_print("Interface '%s': Error: SIOCSIFFLAGS failed: %s\n",
   ifname, strerror(saved_errno));
 } else {
  v_print("Interface '%s': flags set to %04X.\n", ifname, flags);
 }

 return res;
}
