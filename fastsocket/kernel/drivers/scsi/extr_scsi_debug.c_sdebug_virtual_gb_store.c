
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int get_sdebug_capacity () ;
 int scsi_debug_virtual_gb ;
 int sdebug_capacity ;
 int sscanf (char const*,char*,int*) ;

__attribute__((used)) static ssize_t sdebug_virtual_gb_store(struct device_driver * ddp,
           const char * buf, size_t count)
{
        int n;

 if ((count > 0) && (1 == sscanf(buf, "%d", &n)) && (n >= 0)) {
  scsi_debug_virtual_gb = n;

  sdebug_capacity = get_sdebug_capacity();

  return count;
 }
 return -EINVAL;
}
