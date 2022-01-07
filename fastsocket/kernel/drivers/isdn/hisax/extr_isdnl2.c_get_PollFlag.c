
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sk_buff {int* data; } ;
struct PStack {int l2; } ;


 size_t l2addrsize (int *) ;

__attribute__((used)) static inline u_char
get_PollFlag(struct PStack * st, struct sk_buff * skb)
{
 return (skb->data[l2addrsize(&(st->l2))] & 0x10);
}
