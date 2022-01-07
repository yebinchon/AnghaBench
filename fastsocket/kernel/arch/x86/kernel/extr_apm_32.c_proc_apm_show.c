
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_3__ {int version; int flags; } ;
struct TYPE_4__ {int connection_version; TYPE_1__ bios; } ;


 int apm_get_power_status (unsigned short*,unsigned short*,unsigned short*) ;
 TYPE_2__ apm_info ;
 int driver_version ;
 int num_online_cpus () ;
 int seq_printf (struct seq_file*,char*,int ,int,int,int ,unsigned short,unsigned short,unsigned short,int,int,char*) ;

__attribute__((used)) static int proc_apm_show(struct seq_file *m, void *v)
{
 unsigned short bx;
 unsigned short cx;
 unsigned short dx;
 int error;
 unsigned short ac_line_status = 0xff;
 unsigned short battery_status = 0xff;
 unsigned short battery_flag = 0xff;
 int percentage = -1;
 int time_units = -1;
 char *units = "?";

 if ((num_online_cpus() == 1) &&
     !(error = apm_get_power_status(&bx, &cx, &dx))) {
  ac_line_status = (bx >> 8) & 0xff;
  battery_status = bx & 0xff;
  if ((cx & 0xff) != 0xff)
   percentage = cx & 0xff;

  if (apm_info.connection_version > 0x100) {
   battery_flag = (cx >> 8) & 0xff;
   if (dx != 0xffff) {
    units = (dx & 0x8000) ? "min" : "sec";
    time_units = dx & 0x7fff;
   }
  }
 }
 seq_printf(m, "%s %d.%d 0x%02x 0x%02x 0x%02x 0x%02x %d%% %d %s\n",
     driver_version,
     (apm_info.bios.version >> 8) & 0xff,
     apm_info.bios.version & 0xff,
     apm_info.bios.flags,
     ac_line_status,
     battery_status,
     battery_flag,
     percentage,
     time_units,
     units);
 return 0;
}
