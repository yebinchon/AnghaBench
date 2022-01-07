
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct adapter {int dummy; } ;


 int A_SGE_PF_KDOORBELL ;
 int MYPF_REG (int ) ;
 int V_PIDX (scalar_t__) ;
 int V_QID (scalar_t__) ;
 struct adapter* netdev2adap (struct net_device*) ;
 int read_eq_indices (struct adapter*,scalar_t__,scalar_t__*,scalar_t__*) ;
 int t4_write_reg (struct adapter*,int ,int) ;
 int wmb () ;

int cxgb4_sync_txq_pidx(struct net_device *dev, u16 qid, u16 pidx,
   u16 size)
{
 struct adapter *adap = netdev2adap(dev);
 u16 hw_pidx, hw_cidx;
 int ret;

 ret = read_eq_indices(adap, qid, &hw_pidx, &hw_cidx);
 if (ret)
  goto out;

 if (pidx != hw_pidx) {
  u16 delta;

  if (pidx >= hw_pidx)
   delta = pidx - hw_pidx;
  else
   delta = size - hw_pidx + pidx;
  wmb();
  t4_write_reg(adap, MYPF_REG(A_SGE_PF_KDOORBELL),
        V_QID(qid) | V_PIDX(delta));
 }
out:
 return ret;
}
