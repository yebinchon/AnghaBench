
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cause; } ;
struct l3_process {int debug; TYPE_1__ para; int st; } ;






 int L3_DEB_CHECK ;
 int l3_debug (int ,char*,int) ;
 int l3dss1_status_send (struct l3_process*,int ,int *) ;

__attribute__((used)) static void
l3dss1_std_ie_err(struct l3_process *pc, int ret) {

 if (pc->debug & L3_DEB_CHECK)
  l3_debug(pc->st, "check_infoelements ret %d", ret);
 switch(ret) {
  case 0:
   break;
  case 131:
   pc->para.cause = 96;
   l3dss1_status_send(pc, 0, ((void*)0));
   break;
  case 128:
   pc->para.cause = 99;
   l3dss1_status_send(pc, 0, ((void*)0));
   break;
  case 130:
   pc->para.cause = 100;
   l3dss1_status_send(pc, 0, ((void*)0));
   break;
  case 129:
  default:
   break;
 }
}
