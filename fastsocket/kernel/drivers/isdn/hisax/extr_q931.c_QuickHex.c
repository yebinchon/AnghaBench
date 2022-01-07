
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;



int
QuickHex(char *txt, u_char * p, int cnt)
{
 register int i;
 register char *t = txt;
 register u_char w;

 for (i = 0; i < cnt; i++) {
  *t++ = ' ';
  w = (p[i] >> 4) & 0x0f;
  if (w < 10)
   *t++ = '0' + w;
  else
   *t++ = 'A' - 10 + w;
  w = p[i] & 0x0f;
  if (w < 10)
   *t++ = '0' + w;
  else
   *t++ = 'A' - 10 + w;
 }
 *t++ = 0;
 return (t - txt);
}
