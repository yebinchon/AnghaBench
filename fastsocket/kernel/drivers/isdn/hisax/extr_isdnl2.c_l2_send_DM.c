
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct PStack {int dummy; } ;
struct FsmInst {struct PStack* userdata; } ;


 int DM ;
 int RSP ;
 int get_PollFlagFree (struct PStack*,struct sk_buff*) ;
 int send_uframe (struct PStack*,int,int ) ;

__attribute__((used)) static void
l2_send_DM(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;
 struct sk_buff *skb = arg;

 send_uframe(st, DM | get_PollFlagFree(st, skb), RSP);
}
