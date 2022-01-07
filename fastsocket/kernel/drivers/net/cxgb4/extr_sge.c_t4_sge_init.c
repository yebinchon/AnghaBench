
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge {int starve_thres; int intrq_lock; scalar_t__* idma_state; int tx_timer; int rx_timer; int * timer_val; int * counter_val; } ;
struct adapter {struct sge sge; } ;


 int A_SGE_DBFIFO_STATUS ;
 int A_SGE_DOORBELL_CONTROL ;
 int EGRSTATUSPAGESIZE ;
 int FL_ALIGN ;
 unsigned int FL_PG_ORDER ;
 int F_ENABLE_DROP ;
 int INGPADBOUNDARY (unsigned int) ;
 int INGPADBOUNDARY_MASK ;
 int M_HP_INT_THRESH ;
 int M_LP_INT_THRESH ;
 int PAGE_SHIFT ;
 unsigned int PAGE_SIZE ;
 int PKTSHIFT (int) ;
 int PKTSHIFT_MASK ;
 int RXPKTCPLMODE ;
 int SGE_CONTROL ;
 int SGE_FL_BUFFER_SIZE0 ;
 int SGE_FL_BUFFER_SIZE1 ;
 int SGE_HOST_PAGE_SIZE ;
 int SGE_INGRESS_RX_THRESHOLD ;
 int SGE_TIMER_VALUE_0_AND_1 ;
 int SGE_TIMER_VALUE_2_AND_3 ;
 int SGE_TIMER_VALUE_4_AND_5 ;
 int STAT_LEN ;
 unsigned int THRESHOLD_0 (int ) ;
 unsigned int THRESHOLD_1 (int ) ;
 unsigned int THRESHOLD_2 (int ) ;
 unsigned int THRESHOLD_3 (int ) ;
 unsigned int TIMERVALUE0 (int ) ;
 unsigned int TIMERVALUE1 (int ) ;
 int V_HP_INT_THRESH (int ) ;
 int V_LP_INT_THRESH (int ) ;
 int core_ticks_per_usec (struct adapter*) ;
 int dbfifo_int_thresh ;
 unsigned int ilog2 (int ) ;
 int setup_timer (int *,int ,unsigned long) ;
 int sge_rx_timer_cb ;
 int sge_tx_timer_cb ;
 int spin_lock_init (int *) ;
 int t4_set_reg_field (struct adapter*,int ,int,int) ;
 int t4_write_reg (struct adapter*,int ,unsigned int) ;
 int us_to_core_ticks (struct adapter*,int ) ;

void t4_sge_init(struct adapter *adap)
{
 unsigned int i, v;
 struct sge *s = &adap->sge;
 unsigned int fl_align_log = ilog2(FL_ALIGN);

 t4_set_reg_field(adap, SGE_CONTROL, PKTSHIFT_MASK |
    INGPADBOUNDARY_MASK | EGRSTATUSPAGESIZE,
    INGPADBOUNDARY(fl_align_log - 5) | PKTSHIFT(2) |
    RXPKTCPLMODE |
    (STAT_LEN == 128 ? EGRSTATUSPAGESIZE : 0));

 t4_set_reg_field(adap, A_SGE_DBFIFO_STATUS,
   V_HP_INT_THRESH(M_HP_INT_THRESH) |
   V_LP_INT_THRESH(M_LP_INT_THRESH),
   V_HP_INT_THRESH(dbfifo_int_thresh) |
   V_LP_INT_THRESH(dbfifo_int_thresh));
 t4_set_reg_field(adap, A_SGE_DOORBELL_CONTROL, F_ENABLE_DROP,
   F_ENABLE_DROP);

 for (i = v = 0; i < 32; i += 4)
  v |= (PAGE_SHIFT - 10) << i;
 t4_write_reg(adap, SGE_HOST_PAGE_SIZE, v);
 t4_write_reg(adap, SGE_FL_BUFFER_SIZE0, PAGE_SIZE);



 t4_write_reg(adap, SGE_INGRESS_RX_THRESHOLD,
       THRESHOLD_0(s->counter_val[0]) |
       THRESHOLD_1(s->counter_val[1]) |
       THRESHOLD_2(s->counter_val[2]) |
       THRESHOLD_3(s->counter_val[3]));
 t4_write_reg(adap, SGE_TIMER_VALUE_0_AND_1,
       TIMERVALUE0(us_to_core_ticks(adap, s->timer_val[0])) |
       TIMERVALUE1(us_to_core_ticks(adap, s->timer_val[1])));
 t4_write_reg(adap, SGE_TIMER_VALUE_2_AND_3,
       TIMERVALUE0(us_to_core_ticks(adap, s->timer_val[2])) |
       TIMERVALUE1(us_to_core_ticks(adap, s->timer_val[3])));
 t4_write_reg(adap, SGE_TIMER_VALUE_4_AND_5,
       TIMERVALUE0(us_to_core_ticks(adap, s->timer_val[4])) |
       TIMERVALUE1(us_to_core_ticks(adap, s->timer_val[5])));
 setup_timer(&s->rx_timer, sge_rx_timer_cb, (unsigned long)adap);
 setup_timer(&s->tx_timer, sge_tx_timer_cb, (unsigned long)adap);
 s->starve_thres = core_ticks_per_usec(adap) * 1000000;
 s->idma_state[0] = s->idma_state[1] = 0;
 spin_lock_init(&s->intrq_lock);
}
