
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUG_TRANSCMD ;
 int INT_MAX ;
 int gig_dbg (int ,char*,char*) ;

__attribute__((used)) static int isdn_gethex(char *p)
{
 int v = 0;
 int c;

 gig_dbg(DEBUG_TRANSCMD, "string: %s", p);

 if (!*p)
  return -1;

 do {
  if (v > (INT_MAX - 15) / 16)
   return -1;
  c = *p;
  if (c >= '0' && c <= '9')
   c -= '0';
  else if (c >= 'a' && c <= 'f')
   c -= 'a' - 10;
  else if (c >= 'A' && c <= 'F')
   c -= 'A' - 10;
  else
   return -1;
  v = v * 16 + c;
 } while (*++p);

 return v;
}
