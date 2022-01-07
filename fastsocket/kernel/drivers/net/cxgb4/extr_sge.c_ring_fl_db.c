
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_fl {int pend_cred; int cntxt_id; } ;
struct adapter {int dummy; } ;


 int DBPRIO ;
 int MYPF_REG (int ) ;
 int PIDX (int) ;
 int QID (int ) ;
 int SGE_PF_KDOORBELL ;
 int t4_write_reg (struct adapter*,int ,int) ;
 int wmb () ;

__attribute__((used)) static inline void ring_fl_db(struct adapter *adap, struct sge_fl *q)
{
 if (q->pend_cred >= 8) {
  wmb();
  t4_write_reg(adap, MYPF_REG(SGE_PF_KDOORBELL), DBPRIO |
        QID(q->cntxt_id) | PIDX(q->pend_cred / 8));
  q->pend_cred &= 7;
 }
}
