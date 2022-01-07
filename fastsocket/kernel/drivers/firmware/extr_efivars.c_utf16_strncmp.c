
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ efi_char16_t ;



__attribute__((used)) static inline int
utf16_strncmp(const efi_char16_t *a, const efi_char16_t *b, size_t len)
{
 while (1) {
  if (len == 0)
   return 0;
  if (*a < *b)
   return -1;
  if (*a > *b)
   return 1;
  if (*a == 0)
   return 0;
  a++;
  b++;
  len--;
 }
}
