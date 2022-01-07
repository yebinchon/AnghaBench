
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;



u_char *
findie(u_char * p, int size, u_char ie, int wanted_set)
{
 int l, codeset, maincodeset;
 u_char *pend = p + size;


 p++;
 l = (*p++) & 0xf;
 p += l;
 p++;
 codeset = 0;
 maincodeset = 0;

 while (p < pend) {
  if ((*p & 0xf0) == 0x90) {
   codeset = *p & 0x07;
   if (!(*p & 0x08))
    maincodeset = codeset;
  }
  if (*p & 0x80)
   p++;
  else {
   if (codeset == wanted_set) {
    if (*p == ie)
                                  {
                                    if ((pend - p) < 2)
                                      return(((void*)0));
                                    if (*(p+1) > (pend - (p+2)))
                                      return(((void*)0));
                                    return (p);
                                  }

    if (*p > ie)
     return (((void*)0));
   }
   p++;
   l = *p++;
   p += l;
   codeset = maincodeset;
  }
 }
 return (((void*)0));
}
