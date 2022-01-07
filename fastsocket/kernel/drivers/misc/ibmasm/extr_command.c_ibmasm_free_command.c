
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kref {int dummy; } ;
struct command {struct command* buffer; int queue_node; } ;


 int atomic_dec (int *) ;
 int atomic_read (int *) ;
 int command_count ;
 int dbg (char*,int ) ;
 int kfree (struct command*) ;
 int list_del (int *) ;
 struct command* to_command (struct kref*) ;

void ibmasm_free_command(struct kref *kref)
{
 struct command *cmd = to_command(kref);

 list_del(&cmd->queue_node);
 atomic_dec(&command_count);
 dbg("command count: %d\n", atomic_read(&command_count));
 kfree(cmd->buffer);
 kfree(cmd);
}
