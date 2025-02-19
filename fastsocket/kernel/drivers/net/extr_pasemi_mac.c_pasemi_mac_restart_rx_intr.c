
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int* status; } ;
struct pasemi_mac_rxring {TYPE_1__ chan; } ;
struct pasemi_mac {TYPE_3__* rx; } ;
struct TYPE_5__ {int chno; } ;
struct TYPE_6__ {TYPE_2__ chan; } ;


 int PAS_IOB_DMA_RXCH_RESET (int ) ;
 unsigned int PAS_IOB_DMA_RXCH_RESET_PCNT (unsigned int) ;
 unsigned int PAS_IOB_DMA_RXCH_RESET_PINTC ;
 unsigned int PAS_IOB_DMA_RXCH_RESET_TINTC ;
 unsigned int PAS_STATUS_PCNT_M ;
 int PAS_STATUS_TIMER ;
 struct pasemi_mac_rxring* rx_ring (struct pasemi_mac const*) ;
 int write_iob_reg (int ,unsigned int) ;

__attribute__((used)) static void pasemi_mac_restart_rx_intr(const struct pasemi_mac *mac)
{
 struct pasemi_mac_rxring *rx = rx_ring(mac);
 unsigned int reg, pcnt;




 pcnt = *rx->chan.status & PAS_STATUS_PCNT_M;

 reg = PAS_IOB_DMA_RXCH_RESET_PCNT(pcnt) | PAS_IOB_DMA_RXCH_RESET_PINTC;

 if (*rx->chan.status & PAS_STATUS_TIMER)
  reg |= PAS_IOB_DMA_RXCH_RESET_TINTC;

 write_iob_reg(PAS_IOB_DMA_RXCH_RESET(mac->rx->chan.chno), reg);
}
