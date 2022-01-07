
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset (char*,int ,int) ;
 scalar_t__ simple_strtoul (char*,int *,int) ;

__attribute__((used)) static void str2eaddr(char *str, char *dest)
{
 int i = 0;

 if (str == ((void*)0)) {
  memset(dest, 0, 6);
  return;
 }

 for (;;) {
  dest[i++] = (char) simple_strtoul(str, ((void*)0), 16);
  str += 2;
  if (!*str++ || i == 6)
   break;
 }
}
