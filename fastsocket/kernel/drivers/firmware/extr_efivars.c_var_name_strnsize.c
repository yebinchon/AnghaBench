
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int efi_char16_t ;
typedef int c ;


 unsigned long min (unsigned long,unsigned long) ;

__attribute__((used)) static unsigned long var_name_strnsize(efi_char16_t *variable_name,
           unsigned long variable_name_size)
{
 unsigned long len;
 efi_char16_t c;






 for (len = 2; len <= variable_name_size; len += sizeof(c)) {
  c = variable_name[(len / sizeof(c)) - 1];
  if (!c)
   break;
 }

 return min(len, variable_name_size);
}
