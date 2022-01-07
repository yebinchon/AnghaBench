
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int substrncpy(char *dest, const char *src, int count)
{
 int max_cnt = count;

 while (count) {
  count--;
  *dest = *src;
  if (*dest == '\0')
   break;
  src++;
  dest++;
 }
 return max_cnt - count;
}
