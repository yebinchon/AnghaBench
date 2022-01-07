
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct acpi_thermal* private; } ;
struct acpi_thermal {int temperature; } ;


 int KELVIN_TO_CELSIUS (int ) ;
 int acpi_thermal_get_temperature (struct acpi_thermal*) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int acpi_thermal_temp_seq_show(struct seq_file *seq, void *offset)
{
 int result = 0;
 struct acpi_thermal *tz = seq->private;


 if (!tz)
  goto end;

 result = acpi_thermal_get_temperature(tz);
 if (result)
  goto end;

 seq_printf(seq, "temperature:             %ld C\n",
     KELVIN_TO_CELSIUS(tz->temperature));

      end:
 return 0;
}
