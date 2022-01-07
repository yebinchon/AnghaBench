
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sysdev_class {int dummy; } ;
typedef int ssize_t ;
typedef scalar_t__ s16 ;
struct TYPE_2__ {int vbits; scalar_t__ leaps; } ;


 int ENODATA ;
 int sprintf (char*,char*,int) ;
 TYPE_1__ stp_info ;
 int stp_online ;

__attribute__((used)) static ssize_t stp_leap_seconds_show(struct sysdev_class *class, char *buf)
{
 if (!stp_online || !(stp_info.vbits & 0x8000))
  return -ENODATA;
 return sprintf(buf, "%i\n", (int)(s16) stp_info.leaps);
}
