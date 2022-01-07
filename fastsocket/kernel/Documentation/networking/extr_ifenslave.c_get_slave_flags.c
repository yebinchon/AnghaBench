
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ifr_flags; int ifr_name; } ;


 int IFNAMSIZ ;
 int SIOCGIFFLAGS ;
 int errno ;
 int ioctl (int ,int ,TYPE_1__*) ;
 int saved_errno ;
 int skfd ;
 TYPE_1__ slave_flags ;
 int strerror (int ) ;
 int strncpy (int ,char*,int ) ;
 int v_print (char*,char*,int ) ;

__attribute__((used)) static int get_slave_flags(char *slave_ifname)
{
 int res = 0;

 strncpy(slave_flags.ifr_name, slave_ifname, IFNAMSIZ);
 res = ioctl(skfd, SIOCGIFFLAGS, &slave_flags);
 if (res < 0) {
  saved_errno = errno;
  v_print("Slave '%s': Error: SIOCGIFFLAGS failed: %s\n",
   slave_ifname, strerror(saved_errno));
 } else {
  v_print("Slave %s: flags %04X.\n",
   slave_ifname, slave_flags.ifr_flags);
 }

 return res;
}
