
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct sge_txq {scalar_t__ db_pidx; scalar_t__ size; int db_lock; scalar_t__ db_disabled; scalar_t__ cntxt_id; } ;
struct adapter {int dummy; } ;


 int A_SGE_PF_KDOORBELL ;
 int CH_WARN (struct adapter*,char*) ;
 int MYPF_REG (int ) ;
 int V_PIDX (scalar_t__) ;
 int V_QID (scalar_t__) ;
 int read_eq_indices (struct adapter*,scalar_t__,scalar_t__*,scalar_t__*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int t4_write_reg (struct adapter*,int ,int) ;
 int wmb () ;

__attribute__((used)) static void sync_txq_pidx(struct adapter *adap, struct sge_txq *q)
{
 u16 hw_pidx, hw_cidx;
 int ret;

 spin_lock_bh(&q->db_lock);
 ret = read_eq_indices(adap, (u16)q->cntxt_id, &hw_pidx, &hw_cidx);
 if (ret)
  goto out;
 if (q->db_pidx != hw_pidx) {
  u16 delta;

  if (q->db_pidx >= hw_pidx)
   delta = q->db_pidx - hw_pidx;
  else
   delta = q->size - hw_pidx + q->db_pidx;
  wmb();
  t4_write_reg(adap, MYPF_REG(A_SGE_PF_KDOORBELL),
    V_QID(q->cntxt_id) | V_PIDX(delta));
 }
out:
 q->db_disabled = 0;
 spin_unlock_bh(&q->db_lock);
 if (ret)
  CH_WARN(adap, "DB drop recovery failed.\n");
}
