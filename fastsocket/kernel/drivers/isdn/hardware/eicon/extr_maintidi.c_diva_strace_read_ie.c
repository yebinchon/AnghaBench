
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char length; int * data; } ;
typedef TYPE_1__ diva_trace_ie_t ;
struct TYPE_6__ {scalar_t__ path_length; } ;
typedef TYPE_2__ diva_man_var_header_t ;


 int memcpy (int *,char*,char) ;

__attribute__((used)) static int diva_strace_read_ie (diva_man_var_header_t* pVar,
                 diva_trace_ie_t* var) {
 char* ptr = (char*)&pVar->path_length;

 ptr += (pVar->path_length + 1);

 var->length = *ptr;
 memcpy (&var->data[0], ptr+1, *ptr);

 return (0);
}
