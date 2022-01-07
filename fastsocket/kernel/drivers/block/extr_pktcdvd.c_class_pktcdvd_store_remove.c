
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct class {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int MKDEV (unsigned int,unsigned int) ;
 int pkt_remove_dev (int ) ;
 int sscanf (char const*,char*,unsigned int*,unsigned int*) ;

__attribute__((used)) static ssize_t class_pktcdvd_store_remove(struct class *c, const char *buf,
     size_t count)
{
 unsigned int major, minor;
 if (sscanf(buf, "%u:%u", &major, &minor) == 2) {
  pkt_remove_dev(MKDEV(major, minor));
  return count;
 }
 return -EINVAL;
}
