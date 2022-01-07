
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int line; } ;
struct mpsc_port_info {TYPE_1__ port; } ;


 int SDMA_SDCM_AR ;
 int SDMA_SDCM_AT ;
 int mpsc_sdma_cmd (struct mpsc_port_info*,int) ;
 int mpsc_sdma_intr_ack (struct mpsc_port_info*) ;
 int mpsc_sdma_intr_mask (struct mpsc_port_info*,int) ;
 int mpsc_sdma_set_rx_ring (struct mpsc_port_info*,int *) ;
 int mpsc_sdma_set_tx_ring (struct mpsc_port_info*,int *) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static void mpsc_sdma_stop(struct mpsc_port_info *pi)
{
 pr_debug("mpsc_sdma_stop[%d]: Stopping SDMA\n", pi->port.line);


 mpsc_sdma_cmd(pi, 0);
 mpsc_sdma_cmd(pi, SDMA_SDCM_AR | SDMA_SDCM_AT);


 mpsc_sdma_set_tx_ring(pi, ((void*)0));
 mpsc_sdma_set_rx_ring(pi, ((void*)0));


 mpsc_sdma_intr_mask(pi, 0xf);
 mpsc_sdma_intr_ack(pi);
}
