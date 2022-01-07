
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mtip_port {struct mtip_cmd* commands; int * completed; } ;
struct mtip_cmd {int comp_data; int (* comp_func ) (struct mtip_port*,int,int ,int ) ;} ;
struct driver_data {int slot_groups; TYPE_1__* pdev; struct mtip_port* port; } ;
struct TYPE_2__ {int dev; } ;


 int MTIP_TAG_INTERNAL ;
 int dev_warn (int *,char*,int) ;
 scalar_t__ likely (int (*) (struct mtip_port*,int,int ,int )) ;
 scalar_t__ mtip_check_surprise_removal (TYPE_1__*) ;
 int mtip_command_cleanup (struct driver_data*) ;
 int readl (int ) ;
 int stub1 (struct mtip_port*,int,int ,int ) ;
 scalar_t__ unlikely (int) ;
 int writel (int,int ) ;

__attribute__((used)) static inline void mtip_process_sdbf(struct driver_data *dd)
{
 struct mtip_port *port = dd->port;
 int group, tag, bit;
 u32 completed;
 struct mtip_cmd *command;


 for (group = 0; group < dd->slot_groups; group++) {
  completed = readl(port->completed[group]);
  if (!completed)
   continue;


  writel(completed, port->completed[group]);


  for (bit = 0;
       (bit < 32) && completed;
       bit++, completed >>= 1) {
   if (completed & 0x01) {
    tag = (group << 5) | bit;


    if (unlikely(tag == MTIP_TAG_INTERNAL))
     continue;

    command = &port->commands[tag];

    if (likely(command->comp_func)) {
     command->comp_func(
      port,
      tag,
      command->comp_data,
      0);
    } else {
     dev_warn(&dd->pdev->dev,
      "Null completion "
      "for tag %d",
      tag);

     if (mtip_check_surprise_removal(
      dd->pdev)) {
      mtip_command_cleanup(dd);
      return;
     }
    }
   }
  }
 }
}
