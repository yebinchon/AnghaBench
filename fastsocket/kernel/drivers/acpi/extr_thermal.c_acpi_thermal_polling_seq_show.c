
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct acpi_thermal* private; } ;
struct acpi_thermal {TYPE_1__* thermal_zone; } ;
struct TYPE_2__ {int polling_delay; } ;


 int seq_printf (struct seq_file*,char*,int) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int acpi_thermal_polling_seq_show(struct seq_file *seq, void *offset)
{
 struct acpi_thermal *tz = seq->private;


 if (!tz)
  goto end;

 if (!tz->thermal_zone->polling_delay) {
  seq_puts(seq, "<polling disabled>\n");
  goto end;
 }

 seq_printf(seq, "polling frequency:       %d seconds\n",
     (tz->thermal_zone->polling_delay / 1000));

      end:
 return 0;
}
