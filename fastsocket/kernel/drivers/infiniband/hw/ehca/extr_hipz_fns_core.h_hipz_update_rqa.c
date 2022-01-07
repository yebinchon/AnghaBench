
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int kernel; } ;
struct ehca_qp {TYPE_1__ galpas; } ;


 int EHCA_BMASK_SET (int ,int ) ;
 int QPX_RQADDER ;
 int hipz_galpa_store_qp (int ,int ,int ) ;
 int qpx_rqa ;

__attribute__((used)) static inline void hipz_update_rqa(struct ehca_qp *qp, u16 nr_wqes)
{

 hipz_galpa_store_qp(qp->galpas.kernel, qpx_rqa,
       EHCA_BMASK_SET(QPX_RQADDER, nr_wqes));
}
