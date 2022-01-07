
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int efi_char16_t ;



__attribute__((used)) static unsigned long
utf16_strnlen(efi_char16_t *s, size_t maxlength)
{
 unsigned long length = 0;

 while (*s++ != 0 && length < maxlength)
  length++;
 return length;
}
