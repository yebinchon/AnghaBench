
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nes_cm_core {int node_cnt; int listen_node_cnt; int state; } ;


 int NES_DBG_CM ;
 int atomic_read (int *) ;
 int nes_debug (int ,char*,...) ;

__attribute__((used)) static void print_core(struct nes_cm_core *core)
{
 nes_debug(NES_DBG_CM, "---------------------------------------------\n");
 nes_debug(NES_DBG_CM, "CM Core  -- (core = %p )\n", core);
 if (!core)
  return;
 nes_debug(NES_DBG_CM, "---------------------------------------------\n");

 nes_debug(NES_DBG_CM, "State         : %u \n", core->state);

 nes_debug(NES_DBG_CM, "Listen Nodes  : %u \n", atomic_read(&core->listen_node_cnt));
 nes_debug(NES_DBG_CM, "Active Nodes  : %u \n", atomic_read(&core->node_cnt));

 nes_debug(NES_DBG_CM, "core          : %p \n", core);

 nes_debug(NES_DBG_CM, "-------------- end core ---------------\n");
}
