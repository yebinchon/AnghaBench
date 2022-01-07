
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pc_maint {int dummy; } ;
struct TYPE_5__ {int istream_wakeup; int ram_in_dw; int ram_out_dw; int ram_offset; int ram_inc; int ram_out_buffer; int ram_outw; int ram_out; int ram_look_ahead; int ram_in_buffer; int ram_inw; int ram_in; } ;
struct TYPE_4__ {int diva_isr_handler; int trapFnc; int stop; int rstFnc; int disIrq; int load; struct pc_maint* pcm; int clr_irq; int tst_irq; int dpc; int out; TYPE_2__ a; } ;
typedef TYPE_1__* PISDN_ADAPTER ;
typedef TYPE_2__ ADAPTER ;


 scalar_t__ MIPS_MAINT_OFFS ;
 scalar_t__ MP_SHARED_RAM_OFFSET ;
 int disable_pri_interrupt ;
 int load_pri_hardware ;
 int mem_in ;
 int mem_in_buffer ;
 int mem_in_dw ;
 int mem_inc ;
 int mem_inw ;
 int mem_look_ahead ;
 int mem_out ;
 int mem_out_buffer ;
 int mem_out_dw ;
 int mem_outw ;
 int pr_dpc ;
 int pr_out ;
 int pr_stream ;
 int pri_ISR ;
 int pri_cpu_trapped ;
 int pri_ram_offset ;
 int reset_pri_hardware ;
 int scom_clear_int ;
 int scom_test_int ;
 int stop_pri_hardware ;

__attribute__((used)) static void prepare_common_pri_functions (PISDN_ADAPTER IoAdapter) {
 ADAPTER *a = &IoAdapter->a ;
 a->ram_in = mem_in ;
 a->ram_inw = mem_inw ;
 a->ram_in_buffer = mem_in_buffer ;
 a->ram_look_ahead = mem_look_ahead ;
 a->ram_out = mem_out ;
 a->ram_outw = mem_outw ;
 a->ram_out_buffer = mem_out_buffer ;
 a->ram_inc = mem_inc ;
 a->ram_offset = pri_ram_offset ;
 a->ram_out_dw = mem_out_dw;
 a->ram_in_dw = mem_in_dw;
  a->istream_wakeup = pr_stream;
 IoAdapter->out = pr_out ;
 IoAdapter->dpc = pr_dpc ;
 IoAdapter->tst_irq = scom_test_int ;
 IoAdapter->clr_irq = scom_clear_int ;
 IoAdapter->pcm = (struct pc_maint *)(MIPS_MAINT_OFFS
                                        - MP_SHARED_RAM_OFFSET) ;
 IoAdapter->load = load_pri_hardware ;
 IoAdapter->disIrq = disable_pri_interrupt ;
 IoAdapter->rstFnc = reset_pri_hardware ;
 IoAdapter->stop = stop_pri_hardware ;
 IoAdapter->trapFnc = pri_cpu_trapped ;
 IoAdapter->diva_isr_handler = pri_ISR;
}
