
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_socket {int resource_setup_new; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 unsigned int ADD_MANAGED_RESOURCE ;
 int EINVAL ;
 unsigned int REMOVE_MANAGED_RESOURCE ;
 int adjust_memory (struct pcmcia_socket*,unsigned int,unsigned long,unsigned long) ;
 struct pcmcia_socket* dev_get_drvdata (struct device*) ;
 int sscanf (char const*,char*,unsigned long*,unsigned long*) ;

__attribute__((used)) static ssize_t store_mem_db(struct device *dev,
       struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct pcmcia_socket *s = dev_get_drvdata(dev);
 unsigned long start_addr, end_addr;
 unsigned int add = ADD_MANAGED_RESOURCE;
 ssize_t ret = 0;

 ret = sscanf (buf, "+ 0x%lx - 0x%lx", &start_addr, &end_addr);
 if (ret != 2) {
  ret = sscanf (buf, "- 0x%lx - 0x%lx", &start_addr, &end_addr);
  add = REMOVE_MANAGED_RESOURCE;
  if (ret != 2) {
   ret = sscanf (buf, "0x%lx - 0x%lx", &start_addr, &end_addr);
   add = ADD_MANAGED_RESOURCE;
   if (ret != 2)
    return -EINVAL;
  }
 }
 if (end_addr < start_addr)
  return -EINVAL;

 ret = adjust_memory(s, add, start_addr, end_addr);
 if (!ret)
  s->resource_setup_new = 1;

 return ret ? ret : count;
}
