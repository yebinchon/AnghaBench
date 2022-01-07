
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct mISDNchannel {int st; } ;


 int _queue_message (int ,struct sk_buff*) ;

__attribute__((used)) static int
mISDN_queue_message(struct mISDNchannel *ch, struct sk_buff *skb)
{
 _queue_message(ch->st, skb);
 return 0;
}
