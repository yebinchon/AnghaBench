
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int user_context; int (* error_notify_proc ) (int ,int *,int ,int,char const*,int) ;} ;
struct TYPE_5__ {int Adapter; int instance; TYPE_1__ user_proc_table; } ;
typedef TYPE_2__ diva_strace_context_t ;


 int stub1 (int ,int *,int ,int,char const*,int) ;

__attribute__((used)) static void diva_trace_error (diva_strace_context_t* pLib,
               int error, const char* file, int line) {
 if (pLib->user_proc_table.error_notify_proc) {
  (*(pLib->user_proc_table.error_notify_proc))( pLib->user_proc_table.user_context,

                      &pLib->instance, pLib->Adapter,
                      error, file, line);
 }
}
