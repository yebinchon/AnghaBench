
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dword ;
typedef int byte ;
typedef int MSG_QUEUE ;


 scalar_t__ DBG_MAGIC ;
 scalar_t__* TraceFilter ;
 int TraceFilterChannel ;
 int TraceFilterIdent ;
 int dbg_adapter_lock ;
 int * dbg_base ;
 int dbg_q_lock ;
 int * dbg_queue ;
 int diva_os_destroy_spin_lock (int *,char*) ;
 int diva_os_get_time (int *,int *) ;
 scalar_t__ diva_os_initialize_spin_lock (int *,char*) ;
 int external_dbg_queue ;
 int queueInit (int *,int *,unsigned long) ;
 int start_sec ;
 int start_usec ;
 int strcpy (int *,char*) ;

int diva_maint_init (byte* base, unsigned long length, int do_init) {
  if (dbg_queue || (!base) || (length < (4096*4))) {
    return (-1);
  }

  TraceFilter[0] = 0;
  TraceFilterIdent = -1;
  TraceFilterChannel = -1;

  dbg_base = base;

  diva_os_get_time (&start_sec, &start_usec);

  *(dword*)base = (dword)DBG_MAGIC;
  base += sizeof(dword);
  length -= sizeof(dword);

  *(dword*)base = 2048;
  base += sizeof(dword);
  length -= sizeof(dword);

  strcpy (base, "KERNEL MODE BUFFER\n");
  base += 2048;
  length -= 2048;

  *(dword*)base = 0;
  base += sizeof(dword);
  length -= sizeof(dword);

  *(void**)base = (void*)(base+sizeof(void*));
  base += sizeof(void*);
  length -= sizeof(void*);

  dbg_queue = (MSG_QUEUE*)base;
  queueInit (dbg_queue, base + sizeof(MSG_QUEUE), length - sizeof(MSG_QUEUE) - 512);
  external_dbg_queue = 0;

  if (!do_init) {
    external_dbg_queue = 1;
  }


 if (diva_os_initialize_spin_lock (&dbg_q_lock, "dbg_init")) {
    dbg_queue = ((void*)0);
    dbg_base = ((void*)0);
    external_dbg_queue = 0;
  return (-1);
  }

 if (diva_os_initialize_spin_lock (&dbg_adapter_lock, "dbg_init")) {
    diva_os_destroy_spin_lock(&dbg_q_lock, "dbg_init");
    dbg_queue = ((void*)0);
    dbg_base = ((void*)0);
    external_dbg_queue = 0;
  return (-1);
  }

  return (0);
}
