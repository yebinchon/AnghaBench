
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* txd_tx_tail; TYPE_3__* txd_tx_pipe; int queued_txd_mb; } ;
struct TYPE_6__ {TYPE_1__ hwm; } ;
struct s_smc {TYPE_2__ os; } ;
struct TYPE_7__ {struct TYPE_7__* sm_next; } ;
typedef TYPE_3__ SMbuf ;


 int DB_GEN (char*,void*,int ,int) ;

__attribute__((used)) static void queue_txd_mb(struct s_smc *smc, SMbuf *mb)
{
 DB_GEN("_rx: queue_txd_mb = %x",(void *)mb,0,4) ;
 smc->os.hwm.queued_txd_mb++ ;
 mb->sm_next = (SMbuf *)((void*)0) ;
 if (smc->os.hwm.txd_tx_pipe == ((void*)0)) {
  smc->os.hwm.txd_tx_pipe = mb ;
 }
 else {
  smc->os.hwm.txd_tx_tail->sm_next = mb ;
 }
 smc->os.hwm.txd_tx_tail = mb ;
}
