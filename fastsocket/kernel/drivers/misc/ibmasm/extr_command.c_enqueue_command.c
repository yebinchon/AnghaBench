
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct service_processor {int command_queue; } ;
struct command {int queue_node; } ;


 int list_add_tail (int *,int *) ;

__attribute__((used)) static void enqueue_command(struct service_processor *sp, struct command *cmd)
{
 list_add_tail(&cmd->queue_node, &sp->command_queue);
}
