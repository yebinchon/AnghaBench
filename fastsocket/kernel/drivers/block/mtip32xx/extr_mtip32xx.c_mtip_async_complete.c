
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mtip_port {int cmd_slot; int cmd_slot_unal; struct mtip_cmd* commands; TYPE_2__* dd; } ;
struct mtip_cmd {int unaligned; int active; int direction; int scatter_ents; int sg; int * comp_func; int (* async_callback ) (int ,int) ;int async_data; } ;
struct driver_data {TYPE_3__* pdev; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {TYPE_1__* pdev; } ;
struct TYPE_4__ {int dev; } ;


 int EIO ;
 int PORT_IRQ_TF_ERR ;
 int atomic_set (int *,int ) ;
 int dev_warn (int *,char*,int) ;
 int dma_unmap_sg (int *,int ,int ,int ) ;
 scalar_t__ likely (int (*) (int ,int)) ;
 int release_slot (struct mtip_port*,int) ;
 int stub1 (int ,int) ;
 scalar_t__ unlikely (int) ;
 int up (int *) ;

__attribute__((used)) static void mtip_async_complete(struct mtip_port *port,
    int tag,
    void *data,
    int status)
{
 struct mtip_cmd *command;
 struct driver_data *dd = data;
 int cb_status = status ? -EIO : 0;

 if (unlikely(!dd) || unlikely(!port))
  return;

 command = &port->commands[tag];

 if (unlikely(status == PORT_IRQ_TF_ERR)) {
  dev_warn(&port->dd->pdev->dev,
   "Command tag %d failed due to TFE\n", tag);
 }


 if (likely(command->async_callback))
  command->async_callback(command->async_data, cb_status);

 command->async_callback = ((void*)0);
 command->comp_func = ((void*)0);


 dma_unmap_sg(&dd->pdev->dev,
  command->sg,
  command->scatter_ents,
  command->direction);


 atomic_set(&port->commands[tag].active, 0);
 release_slot(port, tag);

 if (unlikely(command->unaligned))
  up(&port->cmd_slot_unal);
 else
  up(&port->cmd_slot);
}
