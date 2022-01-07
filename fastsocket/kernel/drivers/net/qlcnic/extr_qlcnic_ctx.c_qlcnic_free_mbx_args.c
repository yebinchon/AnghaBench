
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * arg; } ;
struct TYPE_3__ {int * arg; } ;
struct qlcnic_cmd_args {TYPE_2__ rsp; TYPE_1__ req; } ;


 int kfree (int *) ;

void qlcnic_free_mbx_args(struct qlcnic_cmd_args *cmd)
{
 kfree(cmd->req.arg);
 cmd->req.arg = ((void*)0);
 kfree(cmd->rsp.arg);
 cmd->rsp.arg = ((void*)0);
}
