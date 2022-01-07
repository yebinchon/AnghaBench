
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qeth_channel {TYPE_1__* iob; } ;
struct TYPE_2__ {int data; } ;


 int QETH_CMD_BUFFER_NO ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int SETUP ;
 int kfree (int ) ;

__attribute__((used)) static void qeth_clean_channel(struct qeth_channel *channel)
{
 int cnt;

 QETH_DBF_TEXT(SETUP, 2, "freech");
 for (cnt = 0; cnt < QETH_CMD_BUFFER_NO; cnt++)
  kfree(channel->iob[cnt].data);
}
