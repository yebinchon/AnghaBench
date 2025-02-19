
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct txx9_sramc_sysdev {scalar_t__ base; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {size_t size; struct txx9_sramc_sysdev* private; } ;
typedef size_t ssize_t ;
typedef size_t loff_t ;


 int memcpy_fromio (char*,scalar_t__,size_t) ;

__attribute__((used)) static ssize_t txx9_sram_read(struct file *filp, struct kobject *kobj,
         struct bin_attribute *bin_attr,
         char *buf, loff_t pos, size_t size)
{
 struct txx9_sramc_sysdev *dev = bin_attr->private;
 size_t ramsize = bin_attr->size;

 if (pos >= ramsize)
  return 0;
 if (pos + size > ramsize)
  size = ramsize - pos;
 memcpy_fromio(buf, dev->base + pos, size);
 return size;
}
