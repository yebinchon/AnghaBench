
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_fl {int pend_cred; int credits; int cntxt_id; } ;
struct adapter {int dummy; } ;


 int A_SG_KDOORBELL ;
 int V_EGRCNTX (int ) ;
 int t3_write_reg (struct adapter*,int ,int ) ;
 int wmb () ;

__attribute__((used)) static inline void ring_fl_db(struct adapter *adap, struct sge_fl *q)
{
 if (q->pend_cred >= q->credits / 4) {
  q->pend_cred = 0;
  wmb();
  t3_write_reg(adap, A_SG_KDOORBELL, V_EGRCNTX(q->cntxt_id));
 }
}
