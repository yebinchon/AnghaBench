
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value_length; scalar_t__ path_length; } ;
typedef TYPE_1__ diva_man_var_header_t ;
typedef char byte ;


 scalar_t__ GET_DWORD (char*) ;
 scalar_t__ GET_WORD (char*) ;

__attribute__((used)) static int diva_strace_read_int (diva_man_var_header_t* pVar, int* var) {
 byte* ptr = (char*)&pVar->path_length;
 int value;

 ptr += (pVar->path_length + 1);

 switch (pVar->value_length) {
  case 1:
   value = *(char*)ptr;
   break;

  case 2:
   value = (short)GET_WORD(ptr);
   break;

  case 4:
   value = (int)GET_DWORD(ptr);
   break;

  default:
   return (-1);
 }

 *var = value;

 return (0);
}
