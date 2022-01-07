
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct megasas_instance {int bar; int pdev; int reg_set; } ;


 int iounmap (int ) ;
 int megasas_free_cmds (struct megasas_instance*) ;
 int megasas_free_cmds_fusion (struct megasas_instance*) ;
 int pci_release_selected_regions (int ,int ) ;

void
megasas_release_fusion(struct megasas_instance *instance)
{
 megasas_free_cmds(instance);
 megasas_free_cmds_fusion(instance);

 iounmap(instance->reg_set);

 pci_release_selected_regions(instance->pdev, instance->bar);
}
