
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; int * pointer; } ;
union acpi_object {scalar_t__ type; TYPE_1__ buffer; } ;
struct seq_file {struct acpi_video_device* private; } ;
struct acpi_video_device {int dummy; } ;


 scalar_t__ ACPI_FAILURE (int) ;
 scalar_t__ ACPI_TYPE_BUFFER ;
 int acpi_video_device_EDID (struct acpi_video_device*,union acpi_object**,int) ;
 int kfree (union acpi_object*) ;
 int seq_printf (struct seq_file*,char*) ;
 int seq_putc (struct seq_file*,int ) ;

__attribute__((used)) static int acpi_video_device_EDID_seq_show(struct seq_file *seq, void *offset)
{
 struct acpi_video_device *dev = seq->private;
 int status;
 int i;
 union acpi_object *edid = ((void*)0);


 if (!dev)
  goto out;

 status = acpi_video_device_EDID(dev, &edid, 128);
 if (ACPI_FAILURE(status)) {
  status = acpi_video_device_EDID(dev, &edid, 256);
 }

 if (ACPI_FAILURE(status)) {
  goto out;
 }

 if (edid && edid->type == ACPI_TYPE_BUFFER) {
  for (i = 0; i < edid->buffer.length; i++)
   seq_putc(seq, edid->buffer.pointer[i]);
 }

      out:
 if (!edid)
  seq_printf(seq, "<not supported>\n");
 else
  kfree(edid);

 return 0;
}
