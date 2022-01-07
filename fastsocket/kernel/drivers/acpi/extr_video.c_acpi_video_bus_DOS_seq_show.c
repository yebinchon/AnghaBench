
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct acpi_video_bus* private; } ;
struct acpi_video_bus {int dos_setting; } ;


 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int acpi_video_bus_DOS_seq_show(struct seq_file *seq, void *offset)
{
 struct acpi_video_bus *video = seq->private;


 seq_printf(seq, "DOS setting: <%d>\n", video->dos_setting);

 return 0;
}
