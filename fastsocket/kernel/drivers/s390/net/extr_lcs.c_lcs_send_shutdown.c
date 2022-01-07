
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcs_cmd {int initiator; int cmd_code; } ;
struct lcs_card {int dummy; } ;
struct lcs_buffer {scalar_t__ data; } ;


 int LCS_CMD_SHUTDOWN ;
 int LCS_DBF_TEXT (int,int ,char*) ;
 int LCS_INITIATOR_TCPIP ;
 int LCS_STD_CMD_SIZE ;
 struct lcs_buffer* lcs_get_lancmd (struct lcs_card*,int ) ;
 int lcs_send_lancmd (struct lcs_card*,struct lcs_buffer*,int *) ;
 int trace ;

__attribute__((used)) static int
lcs_send_shutdown(struct lcs_card *card)
{
 struct lcs_buffer *buffer;
 struct lcs_cmd *cmd;

 LCS_DBF_TEXT(2, trace, "shutdown");
 buffer = lcs_get_lancmd(card, LCS_STD_CMD_SIZE);
 cmd = (struct lcs_cmd *) buffer->data;
 cmd->cmd_code = LCS_CMD_SHUTDOWN;
 cmd->initiator = LCS_INITIATOR_TCPIP;
 return lcs_send_lancmd(card, buffer, ((void*)0));
}
