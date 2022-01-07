
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fmt_uuid; } ;


 TYPE_1__ oprofile_fmt ;
 int pfm_unregister_buffer_fmt (int ) ;
 int using_perfmon ;

void perfmon_exit(void)
{
 if (!using_perfmon)
  return;

 pfm_unregister_buffer_fmt(oprofile_fmt.fmt_uuid);
}
