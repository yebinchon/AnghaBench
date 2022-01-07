
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int nr; char* descr; } ;


 TYPE_1__* cause_1tr6 ;
 int cause_1tr6_len ;
 int prbits (char*,int,int,int) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static int
prcause_1tr6(char *dest, u_char * p)
{
 char *dp = dest;
 int i, cause;

 p++;
 if (0 == *p) {
  dp += sprintf(dp, "   OK (cause length=0)\n");
  return (dp - dest);
 } else if (*p > 1) {
  dp += sprintf(dp, "    coding ");
  dp += prbits(dp, p[2], 7, 2);
  dp += sprintf(dp, " location ");
  dp += prbits(dp, p[2], 4, 4);
  *dp++ = '\n';
 }
 p++;
 cause = 0x7f & *p;


 for (i = 0; i < cause_1tr6_len; i++)
  if (cause_1tr6[i].nr == cause)
   break;


 if (i == cause_1tr6_len)
  dp += sprintf(dp, "Unknown cause type %x!\n", cause);
 else
  dp += sprintf(dp, "  cause value %x : %s \n", cause, cause_1tr6[i].descr);

 return (dp - dest);

}
