
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct service_processor {int lock; } ;
struct command {size_t buffer_size; int queue_node; int wait; int status; int * lock; int kref; int * buffer; } ;


 int GFP_KERNEL ;
 size_t IBMASM_CMD_MAX_BUFFER_SIZE ;
 int IBMASM_CMD_PENDING ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int command_count ;
 int dbg (char*,int ) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct command*) ;
 int kref_init (int *) ;
 void* kzalloc (size_t,int ) ;

struct command *ibmasm_new_command(struct service_processor *sp, size_t buffer_size)
{
 struct command *cmd;

 if (buffer_size > IBMASM_CMD_MAX_BUFFER_SIZE)
  return ((void*)0);

 cmd = kzalloc(sizeof(struct command), GFP_KERNEL);
 if (cmd == ((void*)0))
  return ((void*)0);


 cmd->buffer = kzalloc(buffer_size, GFP_KERNEL);
 if (cmd->buffer == ((void*)0)) {
  kfree(cmd);
  return ((void*)0);
 }
 cmd->buffer_size = buffer_size;

 kref_init(&cmd->kref);
 cmd->lock = &sp->lock;

 cmd->status = IBMASM_CMD_PENDING;
 init_waitqueue_head(&cmd->wait);
 INIT_LIST_HEAD(&cmd->queue_node);

 atomic_inc(&command_count);
 dbg("command count: %d\n", atomic_read(&command_count));

 return cmd;
}
