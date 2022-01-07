
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtip_port {int * cmd_issue; int flags; struct mtip_cmd* commands; } ;
struct mtip_cmd {int comp_data; int (* comp_func ) (struct mtip_port*,size_t,int ,int ) ;} ;
struct driver_data {struct mtip_port* port; } ;


 int MTIP_PF_IC_ACTIVE_BIT ;
 size_t MTIP_TAG_INTERNAL ;
 int readl (int ) ;
 int stub1 (struct mtip_port*,size_t,int ,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline void mtip_process_legacy(struct driver_data *dd, u32 port_stat)
{
 struct mtip_port *port = dd->port;
 struct mtip_cmd *cmd = &port->commands[MTIP_TAG_INTERNAL];

 if (test_bit(MTIP_PF_IC_ACTIVE_BIT, &port->flags) &&
     (cmd != ((void*)0)) && !(readl(port->cmd_issue[MTIP_TAG_INTERNAL])
  & (1 << MTIP_TAG_INTERNAL))) {
  if (cmd->comp_func) {
   cmd->comp_func(port,
    MTIP_TAG_INTERNAL,
    cmd->comp_data,
    0);
   return;
  }
 }

 return;
}
