
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct IsdnCardState {char* dlog; } ;


 int HiSax_putstatus (struct IsdnCardState*,char*,char*,...) ;
 int MAX_DLOG_SPACE ;
 int QuickHex (char*,int *,int) ;

void
LogFrame(struct IsdnCardState *cs, u_char * buf, int size)
{
 char *dp;

 if (size < 1)
  return;
 dp = cs->dlog;
 if (size < MAX_DLOG_SPACE / 3 - 10) {
  *dp++ = 'H';
  *dp++ = 'E';
  *dp++ = 'X';
  *dp++ = ':';
  dp += QuickHex(dp, buf, size);
  dp--;
  *dp++ = '\n';
  *dp = 0;
  HiSax_putstatus(cs, ((void*)0), cs->dlog);
 } else
  HiSax_putstatus(cs, "LogFrame: ", "warning Frame too big (%d)", size);
}
