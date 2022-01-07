
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pc_maint {int dummy; } ;
struct TYPE_5__ {void* io; int ram_inc; int ram_out_buffer; int ram_outw; int ram_out; int ram_look_ahead; int ram_in_buffer; int ram_inw; int ram_in; } ;
struct TYPE_4__ {TYPE_2__ a; int diva_isr_handler; int trapFnc; int stop; int rstFnc; int disIrq; int load; struct pc_maint* pcm; int clr_irq; int tst_irq; int dpc; int out; } ;
typedef TYPE_1__* PISDN_ADAPTER ;
typedef TYPE_2__ ADAPTER ;


 scalar_t__ MIPS_MAINT_OFFS ;
 int disable_qBri_interrupt ;
 int load_qBri_hardware ;
 int mem_in ;
 int mem_in_buffer ;
 int mem_inc ;
 int mem_inw ;
 int mem_look_ahead ;
 int mem_out ;
 int mem_out_buffer ;
 int mem_outw ;
 int pr_dpc ;
 int pr_out ;
 int qBri_ISR ;
 int qBri_cpu_trapped ;
 int reset_qBri_hardware ;
 int scom_clear_int ;
 int scom_test_int ;
 int stop_qBri_hardware ;

__attribute__((used)) static void set_common_qBri_functions (PISDN_ADAPTER IoAdapter) {
 ADAPTER *a;

 a = &IoAdapter->a ;

 a->ram_in = mem_in ;
 a->ram_inw = mem_inw ;
 a->ram_in_buffer = mem_in_buffer ;
 a->ram_look_ahead = mem_look_ahead ;
 a->ram_out = mem_out ;
 a->ram_outw = mem_outw ;
 a->ram_out_buffer = mem_out_buffer ;
 a->ram_inc = mem_inc ;

 IoAdapter->out = pr_out ;
 IoAdapter->dpc = pr_dpc ;
 IoAdapter->tst_irq = scom_test_int ;
 IoAdapter->clr_irq = scom_clear_int ;
 IoAdapter->pcm = (struct pc_maint *)MIPS_MAINT_OFFS ;

 IoAdapter->load = load_qBri_hardware ;

 IoAdapter->disIrq = disable_qBri_interrupt ;
 IoAdapter->rstFnc = reset_qBri_hardware ;
 IoAdapter->stop = stop_qBri_hardware ;
 IoAdapter->trapFnc = qBri_cpu_trapped ;

 IoAdapter->diva_isr_handler = qBri_ISR;

 IoAdapter->a.io = (void*)IoAdapter ;
}
