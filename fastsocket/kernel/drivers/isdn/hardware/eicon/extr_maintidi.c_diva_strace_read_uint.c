
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int word ;
typedef int dword ;
struct TYPE_3__ {int value_length; scalar_t__ path_length; } ;
typedef TYPE_1__ diva_man_var_header_t ;
typedef int byte ;


 int GET_DWORD (int*) ;
 int GET_WORD (int*) ;

__attribute__((used)) static int diva_strace_read_uint (diva_man_var_header_t* pVar, dword* var) {
 byte* ptr = (char*)&pVar->path_length;
 dword value;

 ptr += (pVar->path_length + 1);

 switch (pVar->value_length) {
  case 1:
   value = (byte)(*ptr);
   break;

  case 2:
   value = (word)GET_WORD(ptr);
   break;

  case 3:
   value = (dword)GET_DWORD(ptr);
   value &= 0x00ffffff;
   break;

  case 4:
   value = (dword)GET_DWORD(ptr);
   break;

  default:
   return (-1);
 }

 *var = value;

 return (0);
}
