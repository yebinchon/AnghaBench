
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cause; } ;
struct l3_process {int debug; TYPE_1__ para; int st; } ;


 int L3_DEB_CHECK ;
 int L3_DEB_WARN ;
 int l3_debug (int ,char*,int) ;
 int l3ni1_status_send (struct l3_process*,int ,int *) ;

__attribute__((used)) static int
l3ni1_check_messagetype_validity(struct l3_process *pc, int mt, void *arg)
{
 switch (mt) {
  case 152:
  case 151:
  case 149:
  case 148:
  case 147:
  case 145:
  case 146:
  case 144:
  case 143:
  case 142:
  case 141:
  case 135:
  case 134:
  case 137:
  case 136:
  case 130:
  case 129:
  case 128:
  case 140:
  case 139:
  case 150:
  case 133:
  case 132:
   if (pc->debug & L3_DEB_CHECK)
    l3_debug(pc->st, "l3ni1_check_messagetype_validity mt(%x) OK", mt);
   break;
  case 138:
  case 131:
  default:
   if (pc->debug & (L3_DEB_CHECK | L3_DEB_WARN))
    l3_debug(pc->st, "l3ni1_check_messagetype_validity mt(%x) fail", mt);
   pc->para.cause = 97;
   l3ni1_status_send(pc, 0, ((void*)0));
   return(1);
 }
 return(0);
}
