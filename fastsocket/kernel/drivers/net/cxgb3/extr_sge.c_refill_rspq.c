
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_rspq {int cntxt_id; } ;
struct adapter {int dummy; } ;


 int A_SG_RSPQ_CREDIT_RETURN ;
 int V_CREDITS (unsigned int) ;
 int V_RSPQ (int ) ;
 int rmb () ;
 int t3_write_reg (struct adapter*,int ,int) ;

__attribute__((used)) static inline void refill_rspq(struct adapter *adapter,
          const struct sge_rspq *q, unsigned int credits)
{
 rmb();
 t3_write_reg(adapter, A_SG_RSPQ_CREDIT_RETURN,
       V_RSPQ(q->cntxt_id) | V_CREDITS(credits));
}
