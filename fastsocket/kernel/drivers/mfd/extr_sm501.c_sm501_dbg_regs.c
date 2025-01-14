
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm501_devdata {scalar_t__ regs; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct sm501_devdata* dev_get_drvdata (struct device*) ;
 int readl (scalar_t__) ;
 int sprintf (char*,char*,unsigned int,int) ;

__attribute__((used)) static ssize_t sm501_dbg_regs(struct device *dev,
         struct device_attribute *attr, char *buff)
{
 struct sm501_devdata *sm = dev_get_drvdata(dev) ;
 unsigned int reg;
 char *ptr = buff;
 int ret;

 for (reg = 0x00; reg < 0x70; reg += 4) {
  ret = sprintf(ptr, "%08x = %08x\n",
         reg, readl(sm->regs + reg));
  ptr += ret;
 }

 return ptr - buff;
}
