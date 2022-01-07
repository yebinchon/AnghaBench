
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {int kernel; } ;
struct ehca_cq {TYPE_1__ galpas; } ;


 int CQX_N1_GENERATE_COMP_EVENT ;
 int EHCA_BMASK_SET (int ,int ) ;
 int cqx_n1 ;
 int hipz_galpa_load_cq (int ,int ) ;
 int hipz_galpa_store_cq (int ,int ,int ) ;

__attribute__((used)) static inline void hipz_set_cqx_n1(struct ehca_cq *cq, u32 value)
{
 u64 cqx_n1_reg;

 hipz_galpa_store_cq(cq->galpas.kernel, cqx_n1,
       EHCA_BMASK_SET(CQX_N1_GENERATE_COMP_EVENT, value));
 cqx_n1_reg = hipz_galpa_load_cq(cq->galpas.kernel, cqx_n1);
}
