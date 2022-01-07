
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int (* printdebug ) (struct FsmInst*,char*,int,int) ;} ;
struct teimgr {TYPE_1__ tei_m; } ;
struct FsmInst {struct teimgr* userdata; } ;


 int DEBUG_L2_TEI ;
 int* debug ;
 int stub1 (struct FsmInst*,char*,int,int) ;

__attribute__((used)) static void
tei_id_denied(struct FsmInst *fi, int event, void *arg)
{
 struct teimgr *tm = fi->userdata;
 u_char *dp = arg;
 int ri, tei;

 ri = ((unsigned int) *dp++ << 8);
 ri += *dp++;
 dp++;
 tei = *dp >> 1;
 if (*debug & DEBUG_L2_TEI)
  tm->tei_m.printdebug(fi, "identity denied ri %d tei %d",
   ri, tei);
}
