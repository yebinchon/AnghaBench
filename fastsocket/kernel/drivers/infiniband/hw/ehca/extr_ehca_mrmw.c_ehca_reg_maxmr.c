
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct TYPE_8__ {int handle; } ;
struct ehca_shca {TYPE_4__ ipz_hca_handle; int ib_device; struct ehca_mr* maxmr; } ;
struct ehca_pd {int fw_pd; } ;
struct TYPE_7__ {int handle; } ;
struct ehca_mr_hipzout_parms {int rkey; int lkey; TYPE_3__ handle; } ;
struct TYPE_5__ {int lkey; } ;
struct TYPE_6__ {TYPE_1__ ib_mr; } ;
struct ehca_mr {scalar_t__* start; int acl; TYPE_3__ ipz_mr_handle; int size; int hwpage_size; int num_hwpages; int num_kpages; TYPE_2__ ib; } ;


 scalar_t__ H_SUCCESS ;
 int ehca2ib_return_code (scalar_t__) ;
 int ehca_err (int *,char*,scalar_t__,struct ehca_mr*,int ,int ,int ) ;
 int ehca_mrmw_map_acl (int,int *) ;
 int ehca_mrmw_set_pgsize_hipz_acl (int ,int *) ;
 scalar_t__ hipz_h_register_smr (TYPE_4__,struct ehca_mr*,struct ehca_mr*,scalar_t__,int ,int ,struct ehca_mr_hipzout_parms*) ;

int ehca_reg_maxmr(struct ehca_shca *shca,
     struct ehca_mr *e_newmr,
     u64 *iova_start,
     int acl,
     struct ehca_pd *e_pd,
     u32 *lkey,
     u32 *rkey)
{
 u64 h_ret;
 struct ehca_mr *e_origmr = shca->maxmr;
 u32 hipz_acl;
 struct ehca_mr_hipzout_parms hipzout;

 ehca_mrmw_map_acl(acl, &hipz_acl);
 ehca_mrmw_set_pgsize_hipz_acl(e_origmr->hwpage_size, &hipz_acl);

 h_ret = hipz_h_register_smr(shca->ipz_hca_handle, e_newmr, e_origmr,
        (u64)iova_start, hipz_acl, e_pd->fw_pd,
        &hipzout);
 if (h_ret != H_SUCCESS) {
  ehca_err(&shca->ib_device, "hipz_reg_smr failed, h_ret=%lli "
    "e_origmr=%p hca_hndl=%llx mr_hndl=%llx lkey=%x",
    h_ret, e_origmr, shca->ipz_hca_handle.handle,
    e_origmr->ipz_mr_handle.handle,
    e_origmr->ib.ib_mr.lkey);
  return ehca2ib_return_code(h_ret);
 }

 e_newmr->num_kpages = e_origmr->num_kpages;
 e_newmr->num_hwpages = e_origmr->num_hwpages;
 e_newmr->hwpage_size = e_origmr->hwpage_size;
 e_newmr->start = iova_start;
 e_newmr->size = e_origmr->size;
 e_newmr->acl = acl;
 e_newmr->ipz_mr_handle = hipzout.handle;
 *lkey = hipzout.lkey;
 *rkey = hipzout.rkey;
 return 0;
}
