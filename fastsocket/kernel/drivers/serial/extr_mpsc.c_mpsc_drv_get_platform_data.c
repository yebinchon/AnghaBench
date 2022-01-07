
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ulong ;
struct TYPE_3__ {scalar_t__ platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_4__ {int line; int irq; int * ops; scalar_t__ mapbase; scalar_t__ membase; int fifosize; int type; int iotype; int uartclk; } ;
struct mpsc_port_info {TYPE_2__ port; int * shared_regs; int BRG_BCR_m; int MPSC_MPCR_m; int MPSC_CHR_10_m; int MPSC_CHR_2_m; int MPSC_CHR_1_m; int default_flow; int default_parity; int default_bits; int default_baud; int mpsc_max_idle; int brg_clk_src; int brg_can_tune; int cache_mgmt; int mirror_regs; scalar_t__ mpsc_base; } ;
struct mpsc_pdata {int bcr_val; int mpcr_val; int chr_10_val; int chr_2_val; int chr_1_val; int default_flow; int default_parity; int default_bits; int default_baud; int max_idle; int brg_clk_src; int brg_can_tune; int cache_mgmt; int mirror_regs; int brg_clk_freq; } ;


 int MPSC_TXBE_SIZE ;
 int PORT_MPSC ;
 int UPIO_MEM ;
 int mpsc_pops ;
 int mpsc_shared_regs ;
 int platform_get_irq (struct platform_device*,int ) ;

__attribute__((used)) static void mpsc_drv_get_platform_data(struct mpsc_port_info *pi,
  struct platform_device *pd, int num)
{
 struct mpsc_pdata *pdata;

 pdata = (struct mpsc_pdata *)pd->dev.platform_data;

 pi->port.uartclk = pdata->brg_clk_freq;
 pi->port.iotype = UPIO_MEM;
 pi->port.line = num;
 pi->port.type = PORT_MPSC;
 pi->port.fifosize = MPSC_TXBE_SIZE;
 pi->port.membase = pi->mpsc_base;
 pi->port.mapbase = (ulong)pi->mpsc_base;
 pi->port.ops = &mpsc_pops;

 pi->mirror_regs = pdata->mirror_regs;
 pi->cache_mgmt = pdata->cache_mgmt;
 pi->brg_can_tune = pdata->brg_can_tune;
 pi->brg_clk_src = pdata->brg_clk_src;
 pi->mpsc_max_idle = pdata->max_idle;
 pi->default_baud = pdata->default_baud;
 pi->default_bits = pdata->default_bits;
 pi->default_parity = pdata->default_parity;
 pi->default_flow = pdata->default_flow;


 pi->MPSC_CHR_1_m = pdata->chr_1_val;
 pi->MPSC_CHR_2_m = pdata->chr_2_val;
 pi->MPSC_CHR_10_m = pdata->chr_10_val;
 pi->MPSC_MPCR_m = pdata->mpcr_val;
 pi->BRG_BCR_m = pdata->bcr_val;

 pi->shared_regs = &mpsc_shared_regs;

 pi->port.irq = platform_get_irq(pd, 0);
}
