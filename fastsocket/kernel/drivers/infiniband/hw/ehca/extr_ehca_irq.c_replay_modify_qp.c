
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehca_sport {int mod_sqp_lock; scalar_t__* ibqp_sqp; } ;


 size_t IB_QPT_GSI ;
 size_t IB_QPT_SMI ;
 int ehca_recover_sqp (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int replay_modify_qp(struct ehca_sport *sport)
{
 int aqp1_destroyed;
 unsigned long flags;

 spin_lock_irqsave(&sport->mod_sqp_lock, flags);

 aqp1_destroyed = !sport->ibqp_sqp[IB_QPT_GSI];

 if (sport->ibqp_sqp[IB_QPT_SMI])
  ehca_recover_sqp(sport->ibqp_sqp[IB_QPT_SMI]);
 if (!aqp1_destroyed)
  ehca_recover_sqp(sport->ibqp_sqp[IB_QPT_GSI]);

 spin_unlock_irqrestore(&sport->mod_sqp_lock, flags);

 return aqp1_destroyed;
}
