
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int nr; char* edescr; } ;


 int CVSIZE ;
 TYPE_1__* cvlist ;
 int prbits (char*,int,int,int) ;
 int* skipext (int*) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static
int
prcause(char *dest, u_char * p)
{
 u_char *end;
 char *dp = dest;
 int i, cause;

 end = p + p[1] + 1;
 p += 2;
 dp += sprintf(dp, "    coding ");
 dp += prbits(dp, *p, 7, 2);
 dp += sprintf(dp, " location ");
 dp += prbits(dp, *p, 4, 4);
 *dp++ = '\n';
 p = skipext(p);

 cause = 0x7f & *p++;


 for (i = 0; i < CVSIZE; i++)
  if (cvlist[i].nr == cause)
   break;


 if (i == CVSIZE)
  dp += sprintf(dp, "Unknown cause type %x!\n", cause);
 else
  dp += sprintf(dp, "  cause value %x : %s \n", cause, cvlist[i].edescr);

 while (!0) {
  if (p > end)
   break;
  dp += sprintf(dp, "    diag attribute %d ", *p++ & 0x7f);
  dp += sprintf(dp, " rej %d ", *p & 0x7f);
  if (*p & 0x80) {
   *dp++ = '\n';
   break;
  } else
   dp += sprintf(dp, " av %d\n", (*++p) & 0x7f);
 }
 return (dp - dest);

}
