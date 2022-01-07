
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysdev_class {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 int stp_online ;

__attribute__((used)) static ssize_t stp_online_show(struct sysdev_class *class, char *buf)
{
 return sprintf(buf, "%i\n", stp_online);
}
