
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;



void
iecpy(u_char * dest, u_char * iestart, int ieoffset)
{
 u_char *p;
 int l;

 p = iestart + ieoffset + 2;
 l = iestart[1] - ieoffset;
 while (l--)
  *dest++ = *p++;
 *dest++ = '\0';
}
