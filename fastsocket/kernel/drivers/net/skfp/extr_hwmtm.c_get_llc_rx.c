
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* llc_rx_pipe; int queued_rx_frames; } ;
struct TYPE_6__ {TYPE_1__ hwm; } ;
struct s_smc {TYPE_2__ os; } ;
struct TYPE_7__ {struct TYPE_7__* sm_next; } ;
typedef TYPE_3__ SMbuf ;


 int DB_GEN (char*,void*,int ,int) ;

__attribute__((used)) static SMbuf *get_llc_rx(struct s_smc *smc)
{
 SMbuf *mb ;

 if ((mb = smc->os.hwm.llc_rx_pipe)) {
  smc->os.hwm.queued_rx_frames-- ;
  smc->os.hwm.llc_rx_pipe = mb->sm_next ;
 }
 DB_GEN("get_llc_rx: mb = 0x%x",(void *)mb,0,4) ;
 return(mb) ;
}
