
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tx_a0_start; scalar_t__ tx_s_start; scalar_t__ tx_s_size; scalar_t__ rx2_fifo_start; } ;
struct TYPE_5__ {TYPE_1__ fifo; } ;
struct TYPE_6__ {TYPE_2__ fp; } ;
struct s_smc {TYPE_3__ hw; } ;


 int FM_A (int ) ;
 int FM_CMDREG2 ;
 int FM_EAA0 ;
 int FM_EAS ;
 scalar_t__ FM_IRSTQ ;
 int FM_RPXA0 ;
 int FM_RPXS ;
 int FM_SWPXA0 ;
 int FM_SWPXS ;
 int FM_WPXA0 ;
 int FM_WPXS ;
 int outpw (int ,scalar_t__) ;

__attribute__((used)) static void set_txptr(struct s_smc *smc)
{
 outpw(FM_A(FM_CMDREG2),FM_IRSTQ) ;




 outpw(FM_A(FM_RPXA0),smc->hw.fp.fifo.tx_a0_start) ;
 outpw(FM_A(FM_SWPXA0),smc->hw.fp.fifo.tx_a0_start) ;
 outpw(FM_A(FM_WPXA0),smc->hw.fp.fifo.tx_a0_start) ;
 outpw(FM_A(FM_EAA0),smc->hw.fp.fifo.rx2_fifo_start-1) ;




 if (smc->hw.fp.fifo.tx_s_size) {
  outpw(FM_A(FM_RPXS),smc->hw.fp.fifo.tx_s_start) ;
  outpw(FM_A(FM_SWPXS),smc->hw.fp.fifo.tx_s_start) ;
  outpw(FM_A(FM_WPXS),smc->hw.fp.fifo.tx_s_start) ;
  outpw(FM_A(FM_EAS),smc->hw.fp.fifo.tx_a0_start-1) ;
 }
 else {
  outpw(FM_A(FM_RPXS),smc->hw.fp.fifo.tx_a0_start-1) ;
  outpw(FM_A(FM_SWPXS),smc->hw.fp.fifo.tx_a0_start-1) ;
  outpw(FM_A(FM_WPXS),smc->hw.fp.fifo.tx_a0_start-1) ;
  outpw(FM_A(FM_EAS),smc->hw.fp.fifo.tx_a0_start-1) ;
 }
}
