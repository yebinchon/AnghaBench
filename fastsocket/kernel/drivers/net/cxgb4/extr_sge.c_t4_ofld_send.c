
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct adapter {int dummy; } ;


 int local_bh_disable () ;
 int local_bh_enable () ;
 int ofld_send (struct adapter*,struct sk_buff*) ;

int t4_ofld_send(struct adapter *adap, struct sk_buff *skb)
{
 int ret;

 local_bh_disable();
 ret = ofld_send(adap, skb);
 local_bh_enable();
 return ret;
}
