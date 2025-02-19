
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mtip_port {int* allocated; int cmd_slot; TYPE_2__* dd; struct mtip_cmd* commands; } ;
struct mtip_cmd {int direction; int scatter_ents; int sg; int * async_data; int (* async_callback ) (int *,int ) ;int active; } ;
struct driver_data {int dd_flag; struct mtip_port* port; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int ENODEV ;
 int MTIP_DDF_CLEANUP_BIT ;
 scalar_t__ atomic_read (int *) ;
 int dma_unmap_sg (int *,int ,int ,int ) ;
 int set_bit (int ,int *) ;
 int stub1 (int *,int ) ;
 int up (int *) ;

__attribute__((used)) static void mtip_command_cleanup(struct driver_data *dd)
{
 int group = 0, commandslot = 0, commandindex = 0;
 struct mtip_cmd *command;
 struct mtip_port *port = dd->port;
 static int in_progress;

 if (in_progress)
  return;

 in_progress = 1;

 for (group = 0; group < 4; group++) {
  for (commandslot = 0; commandslot < 32; commandslot++) {
   if (!(port->allocated[group] & (1 << commandslot)))
    continue;

   commandindex = group << 5 | commandslot;
   command = &port->commands[commandindex];

   if (atomic_read(&command->active)
       && (command->async_callback)) {
    command->async_callback(command->async_data,
     -ENODEV);
    command->async_callback = ((void*)0);
    command->async_data = ((void*)0);
   }

   dma_unmap_sg(&port->dd->pdev->dev,
    command->sg,
    command->scatter_ents,
    command->direction);
  }
 }

 up(&port->cmd_slot);

 set_bit(MTIP_DDF_CLEANUP_BIT, &dd->dd_flag);
 in_progress = 0;
}
