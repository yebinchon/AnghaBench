
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct ib_qp_attr {unsigned long long timeout; int retry_cnt; } ;


 int IB_QP_RETRY_CNT ;
 int IB_QP_TIMEOUT ;
 int NSEC_PER_MSEC ;
 int WARN_ON_ONCE (int) ;
 int do_div (int,int ) ;
 int msecs_to_jiffies (int) ;

__attribute__((used)) static uint32_t srp_compute_rq_tmo(struct ib_qp_attr *qp_attr, int attr_mask)
{
 uint64_t T_tr_ns, max_compl_time_ms;
 uint32_t rq_tmo_jiffies;






 WARN_ON_ONCE((attr_mask & (IB_QP_TIMEOUT | IB_QP_RETRY_CNT)) !=
       (IB_QP_TIMEOUT | IB_QP_RETRY_CNT));







 T_tr_ns = 4096 * (1ULL << qp_attr->timeout);
 max_compl_time_ms = qp_attr->retry_cnt * 4 * T_tr_ns;
 do_div(max_compl_time_ms, NSEC_PER_MSEC);
 rq_tmo_jiffies = msecs_to_jiffies(max_compl_time_ms + 1000);

 return rq_tmo_jiffies;
}
