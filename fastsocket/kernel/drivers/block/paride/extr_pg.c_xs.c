
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void xs(char *buf, char *targ, int len)
{
 char l = '\0';
 int k;

 for (k = 0; k < len; k++) {
  char c = *buf++;
  if (c != ' ' && c != l)
   l = *targ++ = c;
 }
 if (l == ' ')
  targ--;
 *targ = '\0';
}
