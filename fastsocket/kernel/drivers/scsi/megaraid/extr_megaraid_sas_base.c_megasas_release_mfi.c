
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct megasas_instance {int max_mfi_cmds; int bar; int pdev; int reg_set; int reply_queue_h; scalar_t__ reply_queue; } ;


 int iounmap (int ) ;
 int megasas_free_cmds (struct megasas_instance*) ;
 int pci_free_consistent (int ,int,scalar_t__,int ) ;
 int pci_release_selected_regions (int ,int ) ;

__attribute__((used)) static void megasas_release_mfi(struct megasas_instance *instance)
{
 u32 reply_q_sz = sizeof(u32) *(instance->max_mfi_cmds + 1);

 if (instance->reply_queue)
  pci_free_consistent(instance->pdev, reply_q_sz,
       instance->reply_queue, instance->reply_queue_h);

 megasas_free_cmds(instance);

 iounmap(instance->reg_set);

 pci_release_selected_regions(instance->pdev, instance->bar);
}
