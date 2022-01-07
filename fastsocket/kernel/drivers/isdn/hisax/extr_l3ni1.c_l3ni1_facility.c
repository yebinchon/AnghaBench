
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sk_buff {int len; int data; } ;
struct l3_process {int callref; int st; } ;


 int IE_FACILITY ;
 int check_infoelements (struct l3_process*,struct sk_buff*,int ) ;
 int * findie (int ,int ,int ,int ) ;
 int ie_FACILITY ;
 int l3ni1_parse_facility (int ,struct l3_process*,int ,int *) ;
 int l3ni1_std_ie_err (struct l3_process*,int) ;

__attribute__((used)) static void
l3ni1_facility(struct l3_process *pc, u_char pr, void *arg)
{
 struct sk_buff *skb = arg;
 int ret;

 ret = check_infoelements(pc, skb, ie_FACILITY);
 l3ni1_std_ie_err(pc, ret);
    {
  u_char *p;
  if ((p = findie(skb->data, skb->len, IE_FACILITY, 0)))
   l3ni1_parse_facility(pc->st, pc, pc->callref, p);
 }
}
