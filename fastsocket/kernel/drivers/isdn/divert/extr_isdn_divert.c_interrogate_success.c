
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_char ;
struct call_struc {int dummy; } ;
struct TYPE_6__ {char* data; int datalen; int ll_id; } ;
struct TYPE_7__ {TYPE_1__ dss1_io; } ;
struct TYPE_8__ {int driver; TYPE_2__ parm; } ;
typedef TYPE_3__ isdn_ctrl ;
struct TYPE_9__ {int (* drv_to_name ) (int ) ;} ;


 int DIVERT_REPORT ;
 TYPE_5__ divert_if ;
 int put_address (char*,char*,int) ;
 int put_info_buffer (char*) ;
 int sprintf (char*,char*,...) ;
 int strlen (char*) ;
 int stub1 (int ) ;

__attribute__((used)) static int interrogate_success(isdn_ctrl *ic, struct call_struc *cs)
{ char *src = ic->parm.dss1_io.data;
  int restlen = ic->parm.dss1_io.datalen;
  int cnt = 1;
  u_char n,n1;
  char st[90], *p, *stp;

  if (restlen < 2) return(-100);
  if (*src++ != 0x30) return(-101);
  if ((n = *src++) > 0x81) return(-102);
  restlen -= 2;
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
      restlen = n;
  if (restlen < 3) return(-107);
  if ((*src++ != 2) || (*src++ != 1) || (*src++ != 0x0B)) return(-108);
  restlen -= 3;
  if (restlen < 2) return(-109);
  if (*src == 0x31)
   { src++;
     if ((n = *src++) > 0x81) return(-110);
     restlen -= 2;
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
         restlen = n;
   }

  while (restlen >= 2)
   { stp = st;
     sprintf(stp,"%d 0x%lx %d %s ",DIVERT_REPORT, ic->parm.dss1_io.ll_id,
                 cnt++,divert_if.drv_to_name(ic->driver));
     stp += strlen(stp);
     if (*src++ != 0x30) return(-115);
     n = *src++;
     restlen -= 2;
     if (n > restlen) return(-116);
     restlen -= n;
     p = src;
     src += n;
     if (!(n1 = put_address(stp,p,n & 0xFF))) continue;
     stp += strlen(stp);
     p += n1;
     n -= n1;
     if (n < 6) continue;
     if ((*p++ != 0x0A) || (*p++ != 1)) continue;
     sprintf(stp," 0x%02x ",(*p++) & 0xFF);
     stp += strlen(stp);
     if ((*p++ != 0x0A) || (*p++ != 1)) continue;
     sprintf(stp,"%d ",(*p++) & 0xFF);
     stp += strlen(stp);
     n -= 6;
     if (n > 2)
      { if (*p++ != 0x30) continue;
        if (*p > (n-2)) continue;
        n = *p++;
        if (!(n1 = put_address(stp,p,n & 0xFF))) continue;
        stp += strlen(stp);
      }
     sprintf(stp,"\n");
     put_info_buffer(st);
   }
  if (restlen) return(-117);
  return(0);
}
