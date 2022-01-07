
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 scalar_t__ scsi_debug_cmnd_count ;
 int scsi_debug_every_nth ;
 int sscanf (char const*,char*,int*) ;

__attribute__((used)) static ssize_t sdebug_every_nth_store(struct device_driver * ddp,
          const char * buf, size_t count)
{
        int nth;

 if ((count > 0) && (1 == sscanf(buf, "%d", &nth))) {
  scsi_debug_every_nth = nth;
  scsi_debug_cmnd_count = 0;
  return count;
 }
 return -EINVAL;
}
