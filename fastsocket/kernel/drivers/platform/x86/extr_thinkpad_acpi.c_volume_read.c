
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct seq_file {int dummy; } ;


 int acpi_ec_read (int ,int*) ;
 int onoff (int,int) ;
 int seq_printf (struct seq_file*,char*,...) ;
 int volume_offset ;

__attribute__((used)) static int volume_read(struct seq_file *m)
{
 u8 level;

 if (!acpi_ec_read(volume_offset, &level)) {
  seq_printf(m, "level:\t\tunreadable\n");
 } else {
  seq_printf(m, "level:\t\t%d\n", level & 0xf);
  seq_printf(m, "mute:\t\t%s\n", onoff(level, 6));
  seq_printf(m, "commands:\tup, down, mute\n");
  seq_printf(m, "commands:\tlevel <level>"
          " (<level> is 0-15)\n");
 }

 return 0;
}
