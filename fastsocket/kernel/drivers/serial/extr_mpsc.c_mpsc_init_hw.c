
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int line; } ;
struct mpsc_port_info {int brg_clk_src; TYPE_1__ port; } ;


 int dma_get_cache_alignment () ;
 int mpsc_brg_enable (struct mpsc_port_info*) ;
 int mpsc_brg_init (struct mpsc_port_info*,int ) ;
 int mpsc_hw_init (struct mpsc_port_info*) ;
 int mpsc_sdma_init (struct mpsc_port_info*,int ) ;
 int mpsc_sdma_stop (struct mpsc_port_info*) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static void mpsc_init_hw(struct mpsc_port_info *pi)
{
 pr_debug("mpsc_init_hw[%d]: Initializing\n", pi->port.line);

 mpsc_brg_init(pi, pi->brg_clk_src);
 mpsc_brg_enable(pi);
 mpsc_sdma_init(pi, dma_get_cache_alignment());
 mpsc_sdma_stop(pi);
 mpsc_hw_init(pi);
}
