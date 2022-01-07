
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int dword ;
typedef int diva_trace_ie_t ;
struct TYPE_8__ {int type; } ;
typedef TYPE_1__ diva_man_var_header_t ;


 int diva_strace_read_asc (TYPE_1__*,char*) ;
 int diva_strace_read_asz (TYPE_1__*,char*) ;
 int diva_strace_read_ie (TYPE_1__*,int *) ;
 int diva_strace_read_int (TYPE_1__*,int*) ;
 int diva_strace_read_uint (TYPE_1__*,int *) ;

__attribute__((used)) static int diva_trace_read_variable (diva_man_var_header_t* pVar,
                   void* variable) {
 switch (pVar->type) {
  case 0x03:
   return (diva_strace_read_asz (pVar, (char*)variable));
  case 0x04:
   return (diva_strace_read_asc (pVar, (char*)variable));
  case 0x05:
   return (diva_strace_read_ie (pVar, (diva_trace_ie_t*)variable));
  case 0x81:
   return (diva_strace_read_int (pVar, (int*)variable));
  case 0x82:
   return (diva_strace_read_uint (pVar, (dword*)variable));
  case 0x83:
   return (diva_strace_read_uint (pVar, (dword*)variable));
  case 0x87:
   return (diva_strace_read_uint (pVar, (dword*)variable));
 }






 return (-1);
}
