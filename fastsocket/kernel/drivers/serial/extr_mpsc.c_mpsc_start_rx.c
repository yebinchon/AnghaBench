
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int line; } ;
struct mpsc_port_info {scalar_t__ rcv_data; TYPE_1__ port; } ;


 int SDMA_SDCM_ERD ;
 int mpsc_enter_hunt (struct mpsc_port_info*) ;
 int mpsc_sdma_cmd (struct mpsc_port_info*,int ) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static void mpsc_start_rx(struct mpsc_port_info *pi)
{
 pr_debug("mpsc_start_rx[%d]: Starting...\n", pi->port.line);

 if (pi->rcv_data) {
  mpsc_enter_hunt(pi);
  mpsc_sdma_cmd(pi, SDMA_SDCM_ERD);
 }
}
