
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct acpi_device* private; } ;
struct acpi_device {int dummy; } ;


 int acpi_device_name (struct acpi_device*) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int acpi_button_info_seq_show(struct seq_file *seq, void *offset)
{
 struct acpi_device *device = seq->private;

 seq_printf(seq, "type:                    %s\n",
     acpi_device_name(device));
 return 0;
}
