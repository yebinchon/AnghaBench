
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_bios_log {void* bios_event_log_end; } ;
struct tcpa_event {scalar_t__ event_size; scalar_t__ event_type; } ;
struct seq_file {struct tpm_bios_log* private; } ;
typedef int loff_t ;



__attribute__((used)) static void *tpm_bios_measurements_next(struct seq_file *m, void *v,
     loff_t *pos)
{
 struct tcpa_event *event = v;
 struct tpm_bios_log *log = m->private;
 void *limit = log->bios_event_log_end;

 v += sizeof(struct tcpa_event) + event->event_size;


 if ((v + sizeof(struct tcpa_event)) >= limit)
  return ((void*)0);

 event = v;

 if (event->event_type == 0 && event->event_size == 0)
  return ((void*)0);

 if ((event->event_type == 0 && event->event_size == 0) ||
     ((v + sizeof(struct tcpa_event) + event->event_size) >= limit))
  return ((void*)0);

 (*pos)++;
 return v;
}
