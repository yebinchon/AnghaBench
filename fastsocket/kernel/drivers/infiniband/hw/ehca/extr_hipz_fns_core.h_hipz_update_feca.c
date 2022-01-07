
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int kernel; } ;
struct ehca_cq {TYPE_1__ galpas; } ;


 int CQX_FECADDER ;
 int EHCA_BMASK_SET (int ,int ) ;
 int cqx_feca ;
 int hipz_galpa_store_cq (int ,int ,int ) ;

__attribute__((used)) static inline void hipz_update_feca(struct ehca_cq *cq, u32 nr_cqes)
{
 hipz_galpa_store_cq(cq->galpas.kernel, cqx_feca,
       EHCA_BMASK_SET(CQX_FECADDER, nr_cqes));
}
