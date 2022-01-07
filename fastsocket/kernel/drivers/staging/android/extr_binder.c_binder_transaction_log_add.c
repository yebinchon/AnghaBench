
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binder_transaction_log_entry {int dummy; } ;
struct binder_transaction_log {size_t next; int full; struct binder_transaction_log_entry* entry; } ;


 size_t ARRAY_SIZE (struct binder_transaction_log_entry*) ;
 int memset (struct binder_transaction_log_entry*,int ,int) ;

__attribute__((used)) static struct binder_transaction_log_entry *binder_transaction_log_add(
 struct binder_transaction_log *log)
{
 struct binder_transaction_log_entry *e;
 e = &log->entry[log->next];
 memset(e, 0, sizeof(*e));
 log->next++;
 if (log->next == ARRAY_SIZE(log->entry)) {
  log->next = 0;
  log->full = 1;
 }
 return e;
}
