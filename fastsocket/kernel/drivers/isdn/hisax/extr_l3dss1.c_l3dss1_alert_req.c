
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int * uus1_data; } ;
struct TYPE_4__ {TYPE_1__ dss1; } ;
struct l3_process {TYPE_2__ prot; } ;


 int MT_ALERTING ;
 int l3dss1_message (struct l3_process*,int ) ;
 int l3dss1_msg_with_uus (struct l3_process*,int ) ;
 int newl3state (struct l3_process*,int) ;

__attribute__((used)) static void
l3dss1_alert_req(struct l3_process *pc, u_char pr,
   void *arg)
{
 newl3state(pc, 7);
 if (!pc->prot.dss1.uus1_data[0])
  l3dss1_message(pc, MT_ALERTING);
 else
  l3dss1_msg_with_uus(pc, MT_ALERTING);
}
