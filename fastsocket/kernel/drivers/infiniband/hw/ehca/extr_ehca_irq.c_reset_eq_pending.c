
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct h_galpa {int dummy; } ;
struct TYPE_2__ {struct h_galpa kernel; } ;
struct ehca_cq {TYPE_1__ galpas; } ;


 int CQTEMM_OFFSET (int ) ;
 int cqx_ep ;
 int hipz_galpa_load (struct h_galpa,int ) ;
 int hipz_galpa_store_cq (struct h_galpa,int ,int) ;

__attribute__((used)) static inline void reset_eq_pending(struct ehca_cq *cq)
{
 u64 CQx_EP;
 struct h_galpa gal = cq->galpas.kernel;

 hipz_galpa_store_cq(gal, cqx_ep, 0x0);
 CQx_EP = hipz_galpa_load(gal, CQTEMM_OFFSET(cqx_ep));

 return;
}
