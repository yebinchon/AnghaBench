
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int sdebug_add_adapter () ;
 int sdebug_remove_adapter () ;
 int sscanf (char const*,char*,int*) ;

__attribute__((used)) static ssize_t sdebug_add_host_store(struct device_driver * ddp,
         const char * buf, size_t count)
{
 int delta_hosts;

 if (sscanf(buf, "%d", &delta_hosts) != 1)
  return -EINVAL;
 if (delta_hosts > 0) {
  do {
   sdebug_add_adapter();
  } while (--delta_hosts);
 } else if (delta_hosts < 0) {
  do {
   sdebug_remove_adapter();
  } while (++delta_hosts);
 }
 return count;
}
