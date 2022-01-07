
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int * ctrlq; } ;
struct adapter {TYPE_1__ sge; } ;


 int ctrl_xmit (int *,struct sk_buff*) ;
 int local_bh_disable () ;
 int local_bh_enable () ;

int t4_mgmt_tx(struct adapter *adap, struct sk_buff *skb)
{
 int ret;

 local_bh_disable();
 ret = ctrl_xmit(&adap->sge.ctrlq[0], skb);
 local_bh_enable();
 return ret;
}
