
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct Channel {int chan; int cs; } ;
struct TYPE_3__ {int Length; } ;
typedef TYPE_1__ capi_msg ;


 int HiSax_putstatus (int ,char*,char*,int ,char*) ;
 int QuickHex (char*,int *,int) ;
 char* tmpbuf ;

__attribute__((used)) static void
capi_debug(struct Channel *chanp, capi_msg *cm)
{
 char *t = tmpbuf;

 t += QuickHex(t, (u_char *)cm, (cm->Length>50)? 50: cm->Length);
 t--;
 *t= 0;
 HiSax_putstatus(chanp->cs, "Ch", "%d CAPIMSG %s", chanp->chan, tmpbuf);
}
