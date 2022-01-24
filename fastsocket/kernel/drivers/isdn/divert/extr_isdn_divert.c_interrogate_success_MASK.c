#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u_char ;
struct call_struc {int dummy; } ;
struct TYPE_6__ {char* data; int datalen; int /*<<< orphan*/  ll_id; } ;
struct TYPE_7__ {TYPE_1__ dss1_io; } ;
struct TYPE_8__ {int /*<<< orphan*/  driver; TYPE_2__ parm; } ;
typedef  TYPE_3__ isdn_ctrl ;
struct TYPE_9__ {int /*<<< orphan*/  (* drv_to_name ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int DIVERT_REPORT ; 
 TYPE_5__ divert_if ; 
 int FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(isdn_ctrl *ic, struct call_struc *cs)
{ char *src = ic->parm.dss1_io.data;
  int restlen = ic->parm.dss1_io.datalen;
  int cnt = 1;
  u_char n,n1;
  char st[90], *p, *stp;

  if (restlen < 2) return(-100); /* frame too short */
  if (*src++ != 0x30) return(-101);
  if ((n = *src++) > 0x81) return(-102); /* invalid length field */
  restlen -= 2; /* remaining bytes */
  if (n == 0x80)
   { if (restlen < 2) return(-103);
     if ((*(src+restlen-1)) || (*(src+restlen-2))) return(-104);
     restlen -= 2;
   }
  else
   if ( n == 0x81)
    { n = *src++;
      restlen--;
      if (n > restlen) return(-105);
      restlen = n;
    }
   else
    if (n > restlen) return(-106);
     else 
      restlen = n; /* standard format */   
  if (restlen < 3) return(-107); /* no procedure */
  if ((*src++ != 2) || (*src++ != 1) || (*src++ != 0x0B)) return(-108);
  restlen -= 3; 
  if (restlen < 2) return(-109); /* list missing */
  if (*src == 0x31)
   { src++; 
     if ((n = *src++) > 0x81) return(-110); /* invalid length field */
     restlen -= 2; /* remaining bytes */
     if (n == 0x80)
      { if (restlen < 2) return(-111);
        if ((*(src+restlen-1)) || (*(src+restlen-2))) return(-112);
        restlen -= 2;
      }
     else
      if ( n == 0x81)
       { n = *src++;
         restlen--;
         if (n > restlen) return(-113);
         restlen = n;
       }
      else
       if (n > restlen) return(-114);
        else 
         restlen = n; /* standard format */   
   } /* result list header */ 

  while (restlen >= 2)
   { stp = st;
     FUNC2(stp,"%d 0x%lx %d %s ",DIVERT_REPORT, ic->parm.dss1_io.ll_id,
                 cnt++,divert_if.drv_to_name(ic->driver));
     stp += FUNC3(stp);
     if (*src++ != 0x30) return(-115); /* invalid enum */
     n = *src++;
     restlen -= 2;
     if (n > restlen) return(-116); /* enum length wrong */
     restlen -= n;
     p = src; /* one entry */
     src += n;
     if (!(n1 = FUNC0(stp,p,n & 0xFF))) continue;
     stp += FUNC3(stp);
     p += n1;
     n -= n1;
     if (n < 6) continue; /* no service and proc */
     if ((*p++ != 0x0A) || (*p++ != 1)) continue;
     FUNC2(stp," 0x%02x ",(*p++) & 0xFF);
     stp += FUNC3(stp);
     if ((*p++ != 0x0A) || (*p++ != 1)) continue;
     FUNC2(stp,"%d ",(*p++) & 0xFF);
     stp += FUNC3(stp);
     n -= 6;
     if (n > 2)
      { if (*p++ != 0x30) continue;
        if (*p > (n-2)) continue;
        n = *p++;
        if (!(n1 = FUNC0(stp,p,n & 0xFF))) continue;
        stp += FUNC3(stp);
      }
     FUNC2(stp,"\n");
     FUNC1(st);
   } /* while restlen */
  if (restlen) return(-117);
  return(0);   
}