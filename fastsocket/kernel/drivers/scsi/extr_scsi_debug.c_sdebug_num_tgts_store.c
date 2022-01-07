
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int scsi_debug_num_tgts ;
 int sdebug_max_tgts_luns () ;
 int sscanf (char const*,char*,int*) ;

__attribute__((used)) static ssize_t sdebug_num_tgts_store(struct device_driver * ddp,
         const char * buf, size_t count)
{
        int n;

 if ((count > 0) && (1 == sscanf(buf, "%d", &n)) && (n >= 0)) {
  scsi_debug_num_tgts = n;
  sdebug_max_tgts_luns();
  return count;
 }
 return -EINVAL;
}
