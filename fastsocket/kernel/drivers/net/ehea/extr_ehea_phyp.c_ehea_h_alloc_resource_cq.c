
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct h_epas {int dummy; } ;
struct ehea_cq_attr {unsigned long act_nr_of_cqes; unsigned long nr_pages; int max_nr_of_cqes; int cq_token; int eq_handle; } ;


 int H_ALLOC_HEA_RESOURCE ;
 int H_ALL_RES_TYPE_CQ ;
 int PLPAR_HCALL9_BUFSIZE ;
 unsigned long ehea_plpar_hcall9 (int ,unsigned long*,unsigned long const,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int hcp_epas_ctor (struct h_epas*,unsigned long,unsigned long) ;

u64 ehea_h_alloc_resource_cq(const u64 adapter_handle,
        struct ehea_cq_attr *cq_attr,
        u64 *cq_handle, struct h_epas *epas)
{
 u64 hret;
 unsigned long outs[PLPAR_HCALL9_BUFSIZE];

 hret = ehea_plpar_hcall9(H_ALLOC_HEA_RESOURCE,
     outs,
     adapter_handle,
     H_ALL_RES_TYPE_CQ,
     cq_attr->eq_handle,
     cq_attr->cq_token,
     cq_attr->max_nr_of_cqes,
     0, 0, 0, 0);

 *cq_handle = outs[0];
 cq_attr->act_nr_of_cqes = outs[3];
 cq_attr->nr_pages = outs[4];

 if (!hret)
  hcp_epas_ctor(epas, outs[5], outs[6]);

 return hret;
}
