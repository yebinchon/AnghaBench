
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bss_l2; int data_l2; int text_l2; int bss_b_l1; int data_b_l1; int bss_a_l1; int data_a_l1; int text_l1; } ;
struct module {TYPE_1__ arch; } ;


 int l1_data_A_sram_free (int ) ;
 int l1_data_B_sram_free (int ) ;
 int l1_inst_sram_free (int ) ;
 int l2_sram_free (int ) ;

void module_arch_cleanup(struct module *mod)
{
 l1_inst_sram_free(mod->arch.text_l1);
 l1_data_A_sram_free(mod->arch.data_a_l1);
 l1_data_A_sram_free(mod->arch.bss_a_l1);
 l1_data_B_sram_free(mod->arch.data_b_l1);
 l1_data_B_sram_free(mod->arch.bss_b_l1);
 l2_sram_free(mod->arch.text_l2);
 l2_sram_free(mod->arch.data_l2);
 l2_sram_free(mod->arch.bss_l2);
}
