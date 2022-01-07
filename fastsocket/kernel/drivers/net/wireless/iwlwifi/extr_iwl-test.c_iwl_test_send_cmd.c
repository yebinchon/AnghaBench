
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_test {TYPE_2__* trans; TYPE_1__* ops; } ;
struct iwl_host_cmd {int dummy; } ;
struct TYPE_4__ {int op_mode; } ;
struct TYPE_3__ {int (* send_cmd ) (int ,struct iwl_host_cmd*) ;} ;


 int stub1 (int ,struct iwl_host_cmd*) ;

__attribute__((used)) static inline int iwl_test_send_cmd(struct iwl_test *tst,
        struct iwl_host_cmd *cmd)
{
 return tst->ops->send_cmd(tst->trans->op_mode, cmd);
}
