
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_txq {int db_lock; int pidx; int db_pidx; int cntxt_id; int db_disabled; } ;
struct adapter {int dummy; } ;


 int A_SGE_PF_KDOORBELL ;
 int MYPF_REG (int ) ;
 int V_PIDX (int) ;
 int V_QID (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int t4_write_reg (struct adapter*,int ,int) ;
 int wmb () ;

__attribute__((used)) static inline void ring_tx_db(struct adapter *adap, struct sge_txq *q, int n)
{
 wmb();
 spin_lock(&q->db_lock);
 if (!q->db_disabled) {
  t4_write_reg(adap, MYPF_REG(A_SGE_PF_KDOORBELL),
        V_QID(q->cntxt_id) | V_PIDX(n));
 }
 q->db_pidx = q->pidx;
 spin_unlock(&q->db_lock);
}
