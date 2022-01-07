
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ path_length; } ;
typedef TYPE_1__ diva_man_var_header_t ;


 int memcpy (char*,char*,char) ;

__attribute__((used)) static int diva_strace_read_asc (diva_man_var_header_t* pVar, char* var) {
 char* ptr = (char*)&pVar->path_length;

 ptr += (pVar->path_length + 1);
 memcpy (var, ptr+1, *ptr);
 var[(int)*ptr] = 0;

 return (0);
}
