
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gelic_wl_info {int eurus_cmd_queue; } ;
struct gelic_eurus_cmd {unsigned int cmd; unsigned int buf_size; int done; int work; struct gelic_wl_info* wl; void* buffer; } ;


 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int gelic_eurus_sync_cmd_worker ;
 int init_completion (int *) ;
 struct gelic_eurus_cmd* kzalloc (int,int ) ;
 int queue_work (int ,int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static struct gelic_eurus_cmd *gelic_eurus_sync_cmd(struct gelic_wl_info *wl,
          unsigned int eurus_cmd,
          void *buffer,
          unsigned int buf_size)
{
 struct gelic_eurus_cmd *cmd;


 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (!cmd)
  return ((void*)0);


 cmd->cmd = eurus_cmd;
 cmd->buffer = buffer;
 cmd->buf_size = buf_size;
 cmd->wl = wl;
 INIT_WORK(&cmd->work, gelic_eurus_sync_cmd_worker);
 init_completion(&cmd->done);
 queue_work(wl->eurus_cmd_queue, &cmd->work);


 wait_for_completion(&cmd->done);

 return cmd;
}
