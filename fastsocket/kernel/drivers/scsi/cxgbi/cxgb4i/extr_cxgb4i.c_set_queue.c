
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned int queue_mapping; } ;
struct cxgbi_sock {int dummy; } ;



__attribute__((used)) static inline void set_queue(struct sk_buff *skb, unsigned int queue,
    const struct cxgbi_sock *csk)
{
 skb->queue_mapping = queue;
}
