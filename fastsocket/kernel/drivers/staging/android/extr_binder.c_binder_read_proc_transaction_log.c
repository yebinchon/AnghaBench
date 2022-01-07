
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binder_transaction_log {int next; int * entry; scalar_t__ full; } ;
typedef int off_t ;


 int ARRAY_SIZE (int *) ;
 int PAGE_SIZE ;
 char* print_binder_transaction_log_entry (char*,char*,int *) ;

__attribute__((used)) static int binder_read_proc_transaction_log(
 char *page, char **start, off_t off, int count, int *eof, void *data)
{
 struct binder_transaction_log *log = data;
 int len = 0;
 int i;
 char *buf = page;
 char *end = page + PAGE_SIZE;

 if (off)
  return 0;

 if (log->full) {
  for (i = log->next; i < ARRAY_SIZE(log->entry); i++) {
   if (buf >= end)
    break;
   buf = print_binder_transaction_log_entry(buf, end,
        &log->entry[i]);
  }
 }
 for (i = 0; i < log->next; i++) {
  if (buf >= end)
   break;
  buf = print_binder_transaction_log_entry(buf, end,
        &log->entry[i]);
 }

 *start = page + off;

 len = buf - page;
 if (len > off)
  len -= off;
 else
  len = 0;

 return len < count ? len : count;
}
