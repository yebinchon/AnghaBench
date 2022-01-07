
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct IsdnCardState {int dummy; } ;


 int QuickHex (char*,int *,int) ;
 int debugl1 (struct IsdnCardState*,char*) ;
 int sprintf (char*,char*,char*,...) ;

__attribute__((used)) static void printframe(struct IsdnCardState *cs, u_char *buf, int count, char *s) {
 char tmp[128];
 char *t = tmp;
 int i=count,j;
 u_char *p = buf;

 t += sprintf(t, "tiger %s(%4d)", s, count);
 while (i>0) {
  if (i>16)
   j=16;
  else
   j=i;
  QuickHex(t, p, j);
  debugl1(cs, tmp);
  p += j;
  i -= j;
  t = tmp;
  t += sprintf(t, "tiger %s      ", s);
 }
}
