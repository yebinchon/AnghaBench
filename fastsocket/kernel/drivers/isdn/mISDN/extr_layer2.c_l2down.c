
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u_int ;
struct sk_buff {int dummy; } ;
struct mISDNhead {void* id; void* prim; } ;
struct layer2 {int dummy; } ;


 int l2down_raw (struct layer2*,struct sk_buff*) ;
 struct mISDNhead* mISDN_HEAD_P (struct sk_buff*) ;

__attribute__((used)) static int
l2down(struct layer2 *l2, u_int prim, u_int id, struct sk_buff *skb)
{
 struct mISDNhead *hh = mISDN_HEAD_P(skb);

 hh->prim = prim;
 hh->id = id;
 return l2down_raw(l2, skb);
}
