
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpa_event {int event_size; } ;
struct seq_file {int dummy; } ;


 int seq_putc (struct seq_file*,char) ;

__attribute__((used)) static int tpm_binary_bios_measurements_show(struct seq_file *m, void *v)
{
 struct tcpa_event *event = v;
 char *data = v;
 int i;

 for (i = 0; i < sizeof(struct tcpa_event) + event->event_size; i++)
  seq_putc(m, data[i]);

 return 0;
}
