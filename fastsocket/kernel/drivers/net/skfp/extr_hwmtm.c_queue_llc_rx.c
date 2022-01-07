
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int isr_flag; TYPE_3__* llc_rx_tail; TYPE_3__* llc_rx_pipe; int queued_rx_frames; } ;
struct TYPE_5__ {TYPE_2__ hwm; } ;
struct s_smc {TYPE_1__ os; } ;
struct TYPE_7__ {struct TYPE_7__* sm_next; } ;
typedef TYPE_3__ SMbuf ;


 int DB_GEN (char*,void*,int ,int) ;
 int smt_force_irq (struct s_smc*) ;

__attribute__((used)) static void queue_llc_rx(struct s_smc *smc, SMbuf *mb)
{
 DB_GEN("queue_llc_rx: mb = %x",(void *)mb,0,4) ;
 smc->os.hwm.queued_rx_frames++ ;
 mb->sm_next = (SMbuf *)((void*)0) ;
 if (smc->os.hwm.llc_rx_pipe == ((void*)0)) {
  smc->os.hwm.llc_rx_pipe = mb ;
 }
 else {
  smc->os.hwm.llc_rx_tail->sm_next = mb ;
 }
 smc->os.hwm.llc_rx_tail = mb ;




 if (!smc->os.hwm.isr_flag) {
  smt_force_irq(smc) ;
 }
}
