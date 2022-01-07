
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct acpi_video_bus* private; } ;
struct acpi_video_bus {int dummy; } ;


 int ACPI_SUCCESS (int) ;
 int acpi_video_bus_get_POST (struct acpi_video_bus*,unsigned long long*) ;
 int * device_decode ;
 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static int acpi_video_bus_POST_seq_show(struct seq_file *seq, void *offset)
{
 struct acpi_video_bus *video = seq->private;
 int status;
 unsigned long long id;


 if (!video)
  goto end;

 status = acpi_video_bus_get_POST(video, &id);
 if (!ACPI_SUCCESS(status)) {
  seq_printf(seq, "<not supported>\n");
  goto end;
 }
 seq_printf(seq, "device POSTed is <%s>\n", device_decode[id & 3]);

      end:
 return 0;
}
