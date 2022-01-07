
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static size_t scpdata_length(const char* buf, size_t count)
{
 while (count) {
  if (buf[count - 1] != '\0' && buf[count - 1] != ' ')
   break;
  count--;
 }
 return count;
}
