
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gsmrl; } ;


 int CPM_CMD_RESTART_TX ;
 int do_cmd (int ) ;
 int in_be32 (int *) ;
 int out_be32 (int *,int) ;
 TYPE_1__* scc ;

__attribute__((used)) static void scc_enable_port(void)
{
 out_be32(&scc->gsmrl, in_be32(&scc->gsmrl) | 0x30);
 do_cmd(CPM_CMD_RESTART_TX);
}
