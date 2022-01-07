
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysdev_class {int dummy; } ;
typedef int ssize_t ;


 int etr_eacr ;
 scalar_t__ etr_mode_is_etr (int ) ;
 scalar_t__ etr_mode_is_pps (int ) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t etr_stepping_mode_show(struct sysdev_class *class, char *buf)
{
 char *mode_str;

 if (etr_mode_is_pps(etr_eacr))
  mode_str = "pps";
 else if (etr_mode_is_etr(etr_eacr))
  mode_str = "etr";
 else
  mode_str = "local";
 return sprintf(buf, "%s\n", mode_str);
}
