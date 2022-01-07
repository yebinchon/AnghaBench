
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_4__ {struct TYPE_4__* next_device; } ;
typedef TYPE_1__ MGSLPC_INFO ;


 int driver_version ;
 int line_info (struct seq_file*,TYPE_1__*) ;
 TYPE_1__* mgslpc_device_list ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int mgslpc_proc_show(struct seq_file *m, void *v)
{
 MGSLPC_INFO *info;

 seq_printf(m, "synclink driver:%s\n", driver_version);

 info = mgslpc_device_list;
 while( info ) {
  line_info(m, info);
  info = info->next_device;
 }
 return 0;
}
