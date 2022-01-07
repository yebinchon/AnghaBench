
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
ch_check_voltag(char *tag)
{
 int i;

 for (i = 0; i < 32; i++) {

  if (tag[i] >= 0x7f || tag[i] < 0x20)
   tag[i] = ' ';

  if (tag[i] == '?' ||
      tag[i] == '*')
   tag[i] = ' ';
 }
}
