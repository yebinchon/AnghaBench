
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsxx_cardinfo {int dummy; } ;
struct creg_completion {int st; int cmd_done; int creg_status; } ;
struct creg_cmd {int status; struct creg_completion* cb_private; } ;


 int BUG_ON (int) ;
 int complete (int ) ;

__attribute__((used)) static void creg_cmd_done_cb(struct rsxx_cardinfo *card,
        struct creg_cmd *cmd,
        int st)
{
 struct creg_completion *cmd_completion;

 cmd_completion = cmd->cb_private;
 BUG_ON(!cmd_completion);

 cmd_completion->st = st;
 cmd_completion->creg_status = cmd->status;
 complete(cmd_completion->cmd_done);
}
