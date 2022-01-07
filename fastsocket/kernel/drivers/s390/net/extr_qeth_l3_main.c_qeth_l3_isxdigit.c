
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isxdigit (int ) ;

__attribute__((used)) static int qeth_l3_isxdigit(char *buf)
{
 while (*buf) {
  if (!isxdigit(*buf++))
   return 0;
 }
 return 1;
}
