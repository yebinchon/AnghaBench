
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 scalar_t__ scsi_debug_cmnd_count ;
 int scsi_debug_opts ;
 int sscanf (char const*,char*,...) ;
 scalar_t__ strnicmp (char*,char*,int) ;

__attribute__((used)) static ssize_t sdebug_opts_store(struct device_driver * ddp,
     const char * buf, size_t count)
{
        int opts;
 char work[20];

        if (1 == sscanf(buf, "%10s", work)) {
  if (0 == strnicmp(work,"0x", 2)) {
   if (1 == sscanf(&work[2], "%x", &opts))
    goto opts_done;
  } else {
   if (1 == sscanf(work, "%d", &opts))
    goto opts_done;
  }
 }
 return -EINVAL;
opts_done:
 scsi_debug_opts = opts;
 scsi_debug_cmnd_count = 0;
 return count;
}
