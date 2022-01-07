
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct acpi_thermal* private; } ;
struct TYPE_2__ {int cooling_mode; } ;
struct acpi_thermal {TYPE_1__ flags; } ;


 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int acpi_thermal_cooling_seq_show(struct seq_file *seq, void *offset)
{
 struct acpi_thermal *tz = seq->private;


 if (!tz)
  goto end;

 if (!tz->flags.cooling_mode)
  seq_puts(seq, "<setting not supported>\n");
 else
  seq_puts(seq, "0 - Active; 1 - Passive\n");

      end:
 return 0;
}
