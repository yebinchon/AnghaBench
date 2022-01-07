
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400m_roq {int queue; scalar_t__ ws; } ;


 int skb_queue_head_init (int *) ;

__attribute__((used)) static
void __i2400m_roq_init(struct i2400m_roq *roq)
{
 roq->ws = 0;
 skb_queue_head_init(&roq->queue);
}
