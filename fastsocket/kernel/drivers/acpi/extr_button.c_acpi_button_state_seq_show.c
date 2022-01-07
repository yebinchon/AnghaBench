
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct acpi_device* private; } ;
struct acpi_device {int handle; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 int seq_printf (struct seq_file*,char*,char*) ;

__attribute__((used)) static int acpi_button_state_seq_show(struct seq_file *seq, void *offset)
{
 struct acpi_device *device = seq->private;
 acpi_status status;
 unsigned long long state;

 status = acpi_evaluate_integer(device->handle, "_LID", ((void*)0), &state);
 seq_printf(seq, "state:      %s\n",
     ACPI_FAILURE(status) ? "unsupported" :
   (state ? "open" : "closed"));
 return 0;
}
