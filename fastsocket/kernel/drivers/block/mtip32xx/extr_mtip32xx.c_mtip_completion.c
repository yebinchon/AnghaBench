
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mtip_port {TYPE_2__* dd; struct mtip_cmd* commands; } ;
struct mtip_cmd {int * comp_func; int * async_callback; } ;
struct completion {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int PORT_IRQ_TF_ERR ;
 int complete (struct completion*) ;
 int dev_warn (int *,char*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void mtip_completion(struct mtip_port *port,
       int tag,
       void *data,
       int status)
{
 struct mtip_cmd *command = &port->commands[tag];
 struct completion *waiting = data;
 if (unlikely(status == PORT_IRQ_TF_ERR))
  dev_warn(&port->dd->pdev->dev,
   "Internal command %d completed with TFE\n", tag);

 command->async_callback = ((void*)0);
 command->comp_func = ((void*)0);

 complete(waiting);
}
