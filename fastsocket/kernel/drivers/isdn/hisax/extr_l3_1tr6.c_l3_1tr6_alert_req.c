
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct l3_process {int dummy; } ;


 int MT_N1_ALERT ;
 int PROTO_DIS_N1 ;
 int l3_1TR6_message (struct l3_process*,int ,int ) ;
 int newl3state (struct l3_process*,int) ;

__attribute__((used)) static void
l3_1tr6_alert_req(struct l3_process *pc, u_char pr, void *arg)
{
 newl3state(pc, 7);
 l3_1TR6_message(pc, MT_N1_ALERT, PROTO_DIS_N1);
}
