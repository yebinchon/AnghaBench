
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct ehca_shca {int ib_device; int ipz_hca_handle; } ;
struct ehca_pd {int fw_pd; } ;
struct ehca_mr_pginfo {int num_hwpages; int num_kpages; int hwpage_size; int type; } ;
struct ehca_mr_hipzout_parms {int rkey; int lkey; scalar_t__ vaddr; } ;
struct TYPE_5__ {int lkey; } ;
struct TYPE_6__ {TYPE_2__ ib_mr; } ;
struct TYPE_4__ {int handle; } ;
struct ehca_mr {scalar_t__* start; int acl; scalar_t__ size; int hwpage_size; int num_hwpages; int num_kpages; TYPE_3__ ib; TYPE_1__ ipz_mr_handle; } ;


 int EAGAIN ;
 int EFAULT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ H_SUCCESS ;
 scalar_t__* ehca_alloc_fw_ctrlblock (int ) ;
 int ehca_err (int *,char*,...) ;
 int ehca_free_fw_ctrlblock (scalar_t__*) ;
 int ehca_mrmw_map_acl (int ,int *) ;
 int ehca_mrmw_set_pgsize_hipz_acl (int ,int *) ;
 int ehca_set_pagebuf (struct ehca_mr_pginfo*,int ,scalar_t__*) ;
 int ehca_warn (int *,char*,scalar_t__,struct ehca_mr*) ;
 scalar_t__ hipz_h_reregister_pmr (int ,struct ehca_mr*,scalar_t__,scalar_t__,int ,int ,scalar_t__,struct ehca_mr_hipzout_parms*) ;
 scalar_t__ virt_to_abs (scalar_t__*) ;

inline int ehca_rereg_mr_rereg1(struct ehca_shca *shca,
    struct ehca_mr *e_mr,
    u64 *iova_start,
    u64 size,
    u32 acl,
    struct ehca_pd *e_pd,
    struct ehca_mr_pginfo *pginfo,
    u32 *lkey,
    u32 *rkey)
{
 int ret;
 u64 h_ret;
 u32 hipz_acl;
 u64 *kpage;
 u64 rpage;
 struct ehca_mr_pginfo pginfo_save;
 struct ehca_mr_hipzout_parms hipzout;

 ehca_mrmw_map_acl(acl, &hipz_acl);
 ehca_mrmw_set_pgsize_hipz_acl(pginfo->hwpage_size, &hipz_acl);

 kpage = ehca_alloc_fw_ctrlblock(GFP_KERNEL);
 if (!kpage) {
  ehca_err(&shca->ib_device, "kpage alloc failed");
  ret = -ENOMEM;
  goto ehca_rereg_mr_rereg1_exit0;
 }

 pginfo_save = *pginfo;
 ret = ehca_set_pagebuf(pginfo, pginfo->num_hwpages, kpage);
 if (ret) {
  ehca_err(&shca->ib_device, "set pagebuf failed, e_mr=%p "
    "pginfo=%p type=%x num_kpages=%llx num_hwpages=%llx "
    "kpage=%p", e_mr, pginfo, pginfo->type,
    pginfo->num_kpages, pginfo->num_hwpages, kpage);
  goto ehca_rereg_mr_rereg1_exit1;
 }
 rpage = virt_to_abs(kpage);
 if (!rpage) {
  ehca_err(&shca->ib_device, "kpage=%p", kpage);
  ret = -EFAULT;
  goto ehca_rereg_mr_rereg1_exit1;
 }
 h_ret = hipz_h_reregister_pmr(shca->ipz_hca_handle, e_mr,
          (u64)iova_start, size, hipz_acl,
          e_pd->fw_pd, rpage, &hipzout);
 if (h_ret != H_SUCCESS) {





  ehca_warn(&shca->ib_device, "hipz_h_reregister_pmr failed "
     "(Rereg1), h_ret=%lli e_mr=%p", h_ret, e_mr);
  *pginfo = pginfo_save;
  ret = -EAGAIN;
 } else if ((u64 *)hipzout.vaddr != iova_start) {
  ehca_err(&shca->ib_device, "PHYP changed iova_start in "
    "rereg_pmr, iova_start=%p iova_start_out=%llx e_mr=%p "
    "mr_handle=%llx lkey=%x lkey_out=%x", iova_start,
    hipzout.vaddr, e_mr, e_mr->ipz_mr_handle.handle,
    e_mr->ib.ib_mr.lkey, hipzout.lkey);
  ret = -EFAULT;
 } else {




  e_mr->num_kpages = pginfo->num_kpages;
  e_mr->num_hwpages = pginfo->num_hwpages;
  e_mr->hwpage_size = pginfo->hwpage_size;
  e_mr->start = iova_start;
  e_mr->size = size;
  e_mr->acl = acl;
  *lkey = hipzout.lkey;
  *rkey = hipzout.rkey;
 }

ehca_rereg_mr_rereg1_exit1:
 ehca_free_fw_ctrlblock(kpage);
ehca_rereg_mr_rereg1_exit0:
 if ( ret && (ret != -EAGAIN) )
  ehca_err(&shca->ib_device, "ret=%i lkey=%x rkey=%x "
    "pginfo=%p num_kpages=%llx num_hwpages=%llx",
    ret, *lkey, *rkey, pginfo, pginfo->num_kpages,
    pginfo->num_hwpages);
 return ret;
}
