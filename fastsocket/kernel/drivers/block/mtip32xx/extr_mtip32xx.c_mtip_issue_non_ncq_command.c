
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtip_port {int * cmd_issue; TYPE_1__* commands; } ;
struct TYPE_2__ {int active; } ;


 int MTIP_TAG_BIT (int) ;
 size_t MTIP_TAG_INDEX (int) ;
 int atomic_set (int *,int) ;
 int writel (int,int ) ;

__attribute__((used)) static void mtip_issue_non_ncq_command(struct mtip_port *port, int tag)
{
 atomic_set(&port->commands[tag].active, 1);
 writel(1 << MTIP_TAG_BIT(tag),
  port->cmd_issue[MTIP_TAG_INDEX(tag)]);
}
