
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct s_smt_rx_queue {void* rx_bmu_dsc; void* rx_bmu_ctl; } ;
struct TYPE_3__ {struct s_smt_rx_queue* rx_q; struct s_smt_rx_queue** rx; } ;
struct TYPE_4__ {TYPE_1__ fp; } ;
struct s_smc {TYPE_2__ hw; } ;
typedef void* HW_PTR ;


 scalar_t__ ADDR (int ) ;
 int B0_R1_CSR ;
 int B0_R2_CSR ;
 int B4_R1_DA ;
 int B4_R2_DA ;
 size_t QUEUE_R1 ;
 size_t QUEUE_R2 ;

__attribute__((used)) static void init_rx(struct s_smc *smc)
{
 struct s_smt_rx_queue *queue ;




 smc->hw.fp.rx[QUEUE_R1] = queue = &smc->hw.fp.rx_q[QUEUE_R1] ;
 queue->rx_bmu_ctl = (HW_PTR) ADDR(B0_R1_CSR) ;
 queue->rx_bmu_dsc = (HW_PTR) ADDR(B4_R1_DA) ;




 smc->hw.fp.rx[QUEUE_R2] = queue = &smc->hw.fp.rx_q[QUEUE_R2] ;
 queue->rx_bmu_ctl = (HW_PTR) ADDR(B0_R2_CSR) ;
 queue->rx_bmu_dsc = (HW_PTR) ADDR(B4_R2_DA) ;
}
