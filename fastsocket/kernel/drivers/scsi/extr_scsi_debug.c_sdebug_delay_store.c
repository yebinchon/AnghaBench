
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int scsi_debug_delay ;
 int sscanf (char const*,char*,...) ;

__attribute__((used)) static ssize_t sdebug_delay_store(struct device_driver * ddp,
      const char * buf, size_t count)
{
        int delay;
 char work[20];

        if (1 == sscanf(buf, "%10s", work)) {
  if ((1 == sscanf(work, "%d", &delay)) && (delay >= 0)) {
   scsi_debug_delay = delay;
   return count;
  }
 }
 return -EINVAL;
}
