
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_cmd_buffer {int dummy; } ;
struct qeth_channel {int iob_lock; } ;


 struct qeth_cmd_buffer* __qeth_get_buffer (struct qeth_channel*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct qeth_cmd_buffer *qeth_get_buffer(struct qeth_channel *channel)
{
 struct qeth_cmd_buffer *buffer = ((void*)0);
 unsigned long flags;

 spin_lock_irqsave(&channel->iob_lock, flags);
 buffer = __qeth_get_buffer(channel);
 spin_unlock_irqrestore(&channel->iob_lock, flags);
 return buffer;
}
