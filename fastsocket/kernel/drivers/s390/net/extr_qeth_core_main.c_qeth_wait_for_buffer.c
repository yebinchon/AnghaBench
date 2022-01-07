
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_cmd_buffer {int dummy; } ;
struct qeth_channel {int wait_q; } ;


 struct qeth_cmd_buffer* qeth_get_buffer (struct qeth_channel*) ;
 int wait_event (int ,int ) ;

struct qeth_cmd_buffer *qeth_wait_for_buffer(struct qeth_channel *channel)
{
 struct qeth_cmd_buffer *buffer;
 wait_event(channel->wait_q,
     ((buffer = qeth_get_buffer(channel)) != ((void*)0)));
 return buffer;
}
