
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct acpi_video_bus* private; } ;
struct TYPE_2__ {scalar_t__ post; scalar_t__ rom; scalar_t__ multihead; } ;
struct acpi_video_bus {TYPE_1__ flags; } ;


 int seq_printf (struct seq_file*,char*,char*) ;

__attribute__((used)) static int acpi_video_bus_info_seq_show(struct seq_file *seq, void *offset)
{
 struct acpi_video_bus *video = seq->private;


 if (!video)
  goto end;

 seq_printf(seq, "Switching heads:              %s\n",
     video->flags.multihead ? "yes" : "no");
 seq_printf(seq, "Video ROM:                    %s\n",
     video->flags.rom ? "yes" : "no");
 seq_printf(seq, "Device to be POSTed on boot:  %s\n",
     video->flags.post ? "yes" : "no");

      end:
 return 0;
}
