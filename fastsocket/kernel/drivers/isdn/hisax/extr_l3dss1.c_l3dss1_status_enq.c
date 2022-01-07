
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int cause; } ;
struct l3_process {TYPE_1__ para; } ;


 int check_infoelements (struct l3_process*,struct sk_buff*,int ) ;
 int ie_STATUS_ENQUIRY ;
 int l3dss1_status_send (struct l3_process*,int ,int *) ;
 int l3dss1_std_ie_err (struct l3_process*,int) ;

__attribute__((used)) static void
l3dss1_status_enq(struct l3_process *pc, u_char pr, void *arg)
{
 int ret;
 struct sk_buff *skb = arg;

 ret = check_infoelements(pc, skb, ie_STATUS_ENQUIRY);
 l3dss1_std_ie_err(pc, ret);
 pc->para.cause = 30;
        l3dss1_status_send(pc, pr, ((void*)0));
}
