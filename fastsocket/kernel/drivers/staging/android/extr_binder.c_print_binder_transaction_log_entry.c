
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binder_transaction_log_entry {int debug_id; int call_type; int from_proc; int from_thread; int to_proc; int to_thread; int to_node; int target_handle; int data_size; int offsets_size; } ;


 int snprintf (char*,int,char*,int,char*,int,int,int,int,int,int,int,int) ;

__attribute__((used)) static char *print_binder_transaction_log_entry(char *buf, char *end,
     struct binder_transaction_log_entry *e)
{
 buf += snprintf(buf, end - buf,
   "%d: %s from %d:%d to %d:%d node %d handle %d "
   "size %d:%d\n",
   e->debug_id, (e->call_type == 2) ? "reply" :
   ((e->call_type == 1) ? "async" : "call "), e->from_proc,
   e->from_thread, e->to_proc, e->to_thread, e->to_node,
   e->target_handle, e->data_size, e->offsets_size);
 return buf;
}
