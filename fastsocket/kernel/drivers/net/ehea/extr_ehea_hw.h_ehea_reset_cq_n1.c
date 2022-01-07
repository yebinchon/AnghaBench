
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct h_epa {int dummy; } ;
struct TYPE_2__ {struct h_epa kernel; } ;
struct ehea_cq {TYPE_1__ epas; } ;


 int CQX_N1_GENERATE_COMP_EVENT ;
 int EHEA_BMASK_SET (int ,int) ;
 int cqx_n1 ;
 int epa_store_cq (struct h_epa,int ,int ) ;

__attribute__((used)) static inline void ehea_reset_cq_n1(struct ehea_cq *cq)
{
 struct h_epa epa = cq->epas.kernel;
 epa_store_cq(epa, cqx_n1,
       EHEA_BMASK_SET(CQX_N1_GENERATE_COMP_EVENT, 1));
}
