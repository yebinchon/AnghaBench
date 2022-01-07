
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int NES_DBG_INIT ;
 int nes_debug (int ,char*) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t show_hca(struct device *dev, struct device_attribute *attr,
          char *buf)
{
 nes_debug(NES_DBG_INIT, "\n");
 return sprintf(buf, "NES020\n");
}
