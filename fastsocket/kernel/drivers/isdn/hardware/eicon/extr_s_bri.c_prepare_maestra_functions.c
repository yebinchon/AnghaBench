
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pc_maint {int dummy; } ;
struct TYPE_6__ {int ram_inc; int ram_out_buffer; int ram_outw; int ram_out; int ram_look_ahead; int ram_in_buffer; int ram_inw; int ram_in; } ;
struct TYPE_5__ {int diva_isr_handler; int trapFnc; int stop; int rstFnc; int disIrq; int load; struct pc_maint* pcm; int clr_irq; int tst_irq; int dpc; int out; int MemorySize; int MemoryBase; TYPE_2__ a; } ;
typedef TYPE_1__* PISDN_ADAPTER ;
typedef TYPE_2__ ADAPTER ;


 int BRI_MEMORY_BASE ;
 int BRI_MEMORY_SIZE ;
 scalar_t__ MIPS_MAINT_OFFS ;
 int bri_ISR ;
 int bri_cpu_trapped ;
 int disable_bri_interrupt ;
 int diva_os_prepare_maestra_functions (TYPE_1__*) ;
 int io_in ;
 int io_in_buffer ;
 int io_inc ;
 int io_inw ;
 int io_look_ahead ;
 int io_out ;
 int io_out_buffer ;
 int io_outw ;
 int load_bri_hardware ;
 int pr_dpc ;
 int pr_out ;
 int reset_bri_hardware ;
 int scom_clear_int ;
 int scom_test_int ;
 int stop_bri_hardware ;

void prepare_maestra_functions (PISDN_ADAPTER IoAdapter) {
 ADAPTER *a = &IoAdapter->a ;
 a->ram_in = io_in ;
 a->ram_inw = io_inw ;
 a->ram_in_buffer = io_in_buffer ;
 a->ram_look_ahead = io_look_ahead ;
 a->ram_out = io_out ;
 a->ram_outw = io_outw ;
 a->ram_out_buffer = io_out_buffer ;
 a->ram_inc = io_inc ;
 IoAdapter->MemoryBase = BRI_MEMORY_BASE ;
 IoAdapter->MemorySize = BRI_MEMORY_SIZE ;
 IoAdapter->out = pr_out ;
 IoAdapter->dpc = pr_dpc ;
 IoAdapter->tst_irq = scom_test_int ;
 IoAdapter->clr_irq = scom_clear_int ;
 IoAdapter->pcm = (struct pc_maint *)MIPS_MAINT_OFFS ;
 IoAdapter->load = load_bri_hardware ;
 IoAdapter->disIrq = disable_bri_interrupt ;
 IoAdapter->rstFnc = reset_bri_hardware ;
 IoAdapter->stop = stop_bri_hardware ;
 IoAdapter->trapFnc = bri_cpu_trapped ;
 IoAdapter->diva_isr_handler = bri_ISR;



 diva_os_prepare_maestra_functions (IoAdapter);
}
