
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int efi_char16_t ;


 unsigned long utf16_strnlen (int *,unsigned long) ;

__attribute__((used)) static inline unsigned long
utf16_strlen(efi_char16_t *s)
{
 return utf16_strnlen(s, ~0UL);
}
