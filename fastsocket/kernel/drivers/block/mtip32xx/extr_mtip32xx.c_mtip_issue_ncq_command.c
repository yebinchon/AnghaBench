
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtip_port {TYPE_1__* commands; int cmd_issue_lock; int * cmd_issue; int * s_active; } ;
struct TYPE_2__ {scalar_t__ comp_time; int active; } ;


 int MTIP_NCQ_COMMAND_TIMEOUT_MS ;
 int MTIP_TAG_BIT (int) ;
 size_t MTIP_TAG_INDEX (int) ;
 int atomic_set (int *,int) ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel (int,int ) ;

__attribute__((used)) static inline void mtip_issue_ncq_command(struct mtip_port *port, int tag)
{
 atomic_set(&port->commands[tag].active, 1);

 spin_lock(&port->cmd_issue_lock);

 writel((1 << MTIP_TAG_BIT(tag)),
   port->s_active[MTIP_TAG_INDEX(tag)]);
 writel((1 << MTIP_TAG_BIT(tag)),
   port->cmd_issue[MTIP_TAG_INDEX(tag)]);

 spin_unlock(&port->cmd_issue_lock);


 port->commands[tag].comp_time = jiffies + msecs_to_jiffies(
     MTIP_NCQ_COMMAND_TIMEOUT_MS);
}
