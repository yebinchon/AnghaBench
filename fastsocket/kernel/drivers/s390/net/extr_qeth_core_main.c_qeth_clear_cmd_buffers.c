
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_channel {scalar_t__ io_buf_no; scalar_t__ buf_no; int * iob; } ;


 int QETH_CMD_BUFFER_NO ;
 int qeth_release_buffer (struct qeth_channel*,int *) ;

void qeth_clear_cmd_buffers(struct qeth_channel *channel)
{
 int cnt;

 for (cnt = 0; cnt < QETH_CMD_BUFFER_NO; cnt++)
  qeth_release_buffer(channel, &channel->iob[cnt]);
 channel->buf_no = 0;
 channel->io_buf_no = 0;
}
