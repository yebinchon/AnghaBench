
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int diva_os_spin_lock_magic_t ;


 int * TraceFilter ;
 int dbg_q_lock ;
 int diva_os_enter_spin_lock (int *,int *,char*) ;
 int diva_os_leave_spin_lock (int *,int *,char*) ;
 int memcpy (char*,int *,int) ;
 int strlen (int *) ;

int diva_get_trace_filter (int max_length, char* filter) {
  diva_os_spin_lock_magic_t old_irql;
  int len;

  diva_os_enter_spin_lock (&dbg_q_lock, &old_irql, "read_filter");
  len = strlen (&TraceFilter[0]) + 1;
  if (max_length >= len) {
    memcpy (filter, &TraceFilter[0], len);
  }
  diva_os_leave_spin_lock (&dbg_q_lock, &old_irql, "read_filter");

  return (len);
}
