
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int efi_char16_t ;


 int utf16_strnlen (int *,unsigned long) ;

__attribute__((used)) static inline unsigned long
utf16_strsize(efi_char16_t *data, unsigned long maxlength)
{
 return utf16_strnlen(data, maxlength/sizeof(efi_char16_t)) * sizeof(efi_char16_t);
}
