
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
struct ehca_shca {int ib_device; TYPE_4__ ipz_hca_handle; } ;
struct ehca_mr_pginfo {int num_hwpages; int num_kpages; int hwpage_size; } ;
struct TYPE_7__ {int handle; } ;
struct TYPE_5__ {int lkey; } ;
struct TYPE_6__ {TYPE_1__ ib_mr; } ;
struct ehca_mr {TYPE_3__ ipz_mr_handle; TYPE_2__ ib; } ;


 int EFAULT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ H_PAGE_REGISTERED ;
 scalar_t__ H_SUCCESS ;
 int MAX_RPAGES ;
 int NUM_CHUNKS (int,int) ;
 int ehca2ib_return_code (scalar_t__) ;
 scalar_t__* ehca_alloc_fw_ctrlblock (int ) ;
 int ehca_encode_hwpage_size (int ) ;
 int ehca_err (int *,char*,...) ;
 int ehca_free_fw_ctrlblock (scalar_t__*) ;
 int ehca_set_pagebuf (struct ehca_mr_pginfo*,int,scalar_t__*) ;
 scalar_t__ hipz_h_register_rpage_mr (TYPE_4__,struct ehca_mr*,int ,int ,scalar_t__,int) ;
 scalar_t__ virt_to_abs (scalar_t__*) ;

int ehca_reg_mr_rpages(struct ehca_shca *shca,
         struct ehca_mr *e_mr,
         struct ehca_mr_pginfo *pginfo)
{
 int ret = 0;
 u64 h_ret;
 u32 rnum;
 u64 rpage;
 u32 i;
 u64 *kpage;

 if (!pginfo->num_hwpages)
  return 0;

 kpage = ehca_alloc_fw_ctrlblock(GFP_KERNEL);
 if (!kpage) {
  ehca_err(&shca->ib_device, "kpage alloc failed");
  ret = -ENOMEM;
  goto ehca_reg_mr_rpages_exit0;
 }


 for (i = 0; i < NUM_CHUNKS(pginfo->num_hwpages, MAX_RPAGES); i++) {

  if (i == NUM_CHUNKS(pginfo->num_hwpages, MAX_RPAGES) - 1) {
   rnum = pginfo->num_hwpages % MAX_RPAGES;
   if (rnum == 0)
    rnum = MAX_RPAGES;
  } else
   rnum = MAX_RPAGES;

  ret = ehca_set_pagebuf(pginfo, rnum, kpage);
  if (ret) {
   ehca_err(&shca->ib_device, "ehca_set_pagebuf "
     "bad rc, ret=%i rnum=%x kpage=%p",
     ret, rnum, kpage);
   goto ehca_reg_mr_rpages_exit1;
  }

  if (rnum > 1) {
   rpage = virt_to_abs(kpage);
   if (!rpage) {
    ehca_err(&shca->ib_device, "kpage=%p i=%x",
      kpage, i);
    ret = -EFAULT;
    goto ehca_reg_mr_rpages_exit1;
   }
  } else
   rpage = *kpage;

  h_ret = hipz_h_register_rpage_mr(
   shca->ipz_hca_handle, e_mr,
   ehca_encode_hwpage_size(pginfo->hwpage_size),
   0, rpage, rnum);

  if (i == NUM_CHUNKS(pginfo->num_hwpages, MAX_RPAGES) - 1) {




   if (h_ret != H_SUCCESS) {
    ehca_err(&shca->ib_device, "last "
      "hipz_reg_rpage_mr failed, h_ret=%lli "
      "e_mr=%p i=%x hca_hndl=%llx mr_hndl=%llx"
      " lkey=%x", h_ret, e_mr, i,
      shca->ipz_hca_handle.handle,
      e_mr->ipz_mr_handle.handle,
      e_mr->ib.ib_mr.lkey);
    ret = ehca2ib_return_code(h_ret);
    break;
   } else
    ret = 0;
  } else if (h_ret != H_PAGE_REGISTERED) {
   ehca_err(&shca->ib_device, "hipz_reg_rpage_mr failed, "
     "h_ret=%lli e_mr=%p i=%x lkey=%x hca_hndl=%llx "
     "mr_hndl=%llx", h_ret, e_mr, i,
     e_mr->ib.ib_mr.lkey,
     shca->ipz_hca_handle.handle,
     e_mr->ipz_mr_handle.handle);
   ret = ehca2ib_return_code(h_ret);
   break;
  } else
   ret = 0;
 }


ehca_reg_mr_rpages_exit1:
 ehca_free_fw_ctrlblock(kpage);
ehca_reg_mr_rpages_exit0:
 if (ret)
  ehca_err(&shca->ib_device, "ret=%i shca=%p e_mr=%p pginfo=%p "
    "num_kpages=%llx num_hwpages=%llx", ret, shca, e_mr,
    pginfo, pginfo->num_kpages, pginfo->num_hwpages);
 return ret;
}
