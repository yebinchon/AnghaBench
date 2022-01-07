
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct mthca_profile {int uarc_size; int num_qp; int num_srq; int rdb_per_qp; int num_cq; int num_mcg; int num_mpt; int num_mtt; int num_uar; int num_udav; scalar_t__ fmr_reserved_mtts; } ;
struct mthca_init_hca_param {int qpc_base; int log_num_qps; int eec_base; int log_num_eecs; int srqc_base; int log_num_srqs; int cqc_base; int log_num_cqs; int eqpc_base; int eeec_base; int eqc_base; int log_num_eqs; int rdb_base; int mc_base; int log_mc_table_sz; int mc_hash_sz; int mpt_base; int log_mpt_sz; int mtt_base; int uar_scratch_base; int uarc_base; void* log_uar_sz; void* log_uarc_sz; void* mtt_seg_sz; void* log_mc_entry_sz; } ;
struct TYPE_10__ {int max_icm_sz; } ;
struct TYPE_11__ {TYPE_1__ arbel; } ;
struct mthca_dev_lim {int qpc_entry_sz; int eec_entry_sz; int srq_entry_sz; int cqc_entry_sz; int eqpc_entry_sz; int eeec_entry_sz; int eqc_entry_sz; int mpt_entry_sz; int uar_scratch_entry_sz; TYPE_2__ hca; } ;
struct TYPE_18__ {int mtt_seg_size; int num_qps; int num_eecs; int num_srqs; int num_cqs; int num_eqs; int num_mgms; int num_amgms; int num_mpts; int num_mtt_segs; int num_uars; scalar_t__ fmr_reserved_mtts; int num_pds; } ;
struct TYPE_17__ {int uarc_size; int uarc_base; } ;
struct TYPE_16__ {int ddr_av_base; int num_ddr_avs; } ;
struct TYPE_15__ {int mpt_base; int mtt_base; } ;
struct TYPE_14__ {int rdb_shift; int rdb_base; } ;
struct TYPE_12__ {int fw_start; } ;
struct TYPE_13__ {TYPE_3__ tavor; } ;
struct mthca_dev {int ddr_start; int mthca_flags; TYPE_9__ limits; TYPE_8__ uar_table; TYPE_7__ av_table; TYPE_6__ mr_table; TYPE_5__ qp_table; TYPE_4__ fw; } ;
typedef int s64 ;


 int BITS_PER_LONG ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MTHCA_AV_SIZE ;
 int MTHCA_FLAG_SINAI_OPT ;
 int MTHCA_MGM_ENTRY_SIZE ;
 int MTHCA_NUM_EQS ;
 int MTHCA_NUM_PDS ;
 int MTHCA_RDB_ENTRY_SIZE ;
 int MTHCA_RES_NUM ;






 scalar_t__ PAGE_SIZE ;
 void* ffs (int) ;
 int kfree (struct mthca_resource*) ;
 struct mthca_resource* kzalloc (int,int ) ;
 void* max (void*,int) ;
 int mthca_dbg (struct mthca_dev*,char*,int,...) ;
 int mthca_err (struct mthca_dev*,char*,unsigned long long,unsigned long long) ;
 scalar_t__ mthca_is_memfree (struct mthca_dev*) ;
 int mthca_warn (struct mthca_dev*,char*,...) ;

s64 mthca_make_profile(struct mthca_dev *dev,
         struct mthca_profile *request,
         struct mthca_dev_lim *dev_lim,
         struct mthca_init_hca_param *init_hca)
{
 struct mthca_resource {
  u64 size;
  u64 start;
  int type;
  int num;
  int log_num;
 };

 u64 mem_base, mem_avail;
 s64 total_size = 0;
 struct mthca_resource *profile;
 struct mthca_resource tmp;
 int i, j;

 profile = kzalloc(MTHCA_RES_NUM * sizeof *profile, GFP_KERNEL);
 if (!profile)
  return -ENOMEM;

 profile[133].size = dev_lim->qpc_entry_sz;
 profile[140].size = dev_lim->eec_entry_sz;
 profile[131].size = dev_lim->srq_entry_sz;
 profile[141].size = dev_lim->cqc_entry_sz;
 profile[137].size = dev_lim->eqpc_entry_sz;
 profile[139].size = dev_lim->eeec_entry_sz;
 profile[138].size = dev_lim->eqc_entry_sz;
 profile[132].size = MTHCA_RDB_ENTRY_SIZE;
 profile[136].size = MTHCA_MGM_ENTRY_SIZE;
 profile[135].size = dev_lim->mpt_entry_sz;
 profile[134].size = dev->limits.mtt_seg_size;
 profile[130].size = dev_lim->uar_scratch_entry_sz;
 profile[128].size = MTHCA_AV_SIZE;
 profile[129].size = request->uarc_size;

 profile[133].num = request->num_qp;
 profile[131].num = request->num_srq;
 profile[137].num = request->num_qp;
 profile[132].num = request->num_qp * request->rdb_per_qp;
 profile[141].num = request->num_cq;
 profile[138].num = MTHCA_NUM_EQS;
 profile[136].num = request->num_mcg;
 profile[135].num = request->num_mpt;
 profile[134].num = request->num_mtt;
 profile[130].num = request->num_uar;
 profile[129].num = request->num_uar;
 profile[128].num = request->num_udav;

 for (i = 0; i < MTHCA_RES_NUM; ++i) {
  profile[i].type = i;
  profile[i].log_num = max(ffs(profile[i].num) - 1, 0);
  profile[i].size *= profile[i].num;
  if (mthca_is_memfree(dev))
   profile[i].size = max(profile[i].size, (u64) PAGE_SIZE);
 }

 if (mthca_is_memfree(dev)) {
  mem_base = 0;
  mem_avail = dev_lim->hca.arbel.max_icm_sz;
 } else {
  mem_base = dev->ddr_start;
  mem_avail = dev->fw.tavor.fw_start - dev->ddr_start;
 }







 for (i = MTHCA_RES_NUM; i > 0; --i)
  for (j = 1; j < i; ++j) {
   if (profile[j].size > profile[j - 1].size) {
    tmp = profile[j];
    profile[j] = profile[j - 1];
    profile[j - 1] = tmp;
   }
  }

 for (i = 0; i < MTHCA_RES_NUM; ++i) {
  if (profile[i].size) {
   profile[i].start = mem_base + total_size;
   total_size += profile[i].size;
  }
  if (total_size > mem_avail) {
   mthca_err(dev, "Profile requires 0x%llx bytes; "
      "won't fit in 0x%llx bytes of context memory.\n",
      (unsigned long long) total_size,
      (unsigned long long) mem_avail);
   kfree(profile);
   return -ENOMEM;
  }

  if (profile[i].size)
   mthca_dbg(dev, "profile[%2d]--%2d/%2d @ 0x%16llx "
      "(size 0x%8llx)\n",
      i, profile[i].type, profile[i].log_num,
      (unsigned long long) profile[i].start,
      (unsigned long long) profile[i].size);
 }

 if (mthca_is_memfree(dev))
  mthca_dbg(dev, "HCA context memory: reserving %d KB\n",
     (int) (total_size >> 10));
 else
  mthca_dbg(dev, "HCA memory: allocated %d KB/%d KB (%d KB free)\n",
     (int) (total_size >> 10), (int) (mem_avail >> 10),
     (int) ((mem_avail - total_size) >> 10));

 for (i = 0; i < MTHCA_RES_NUM; ++i) {
  switch (profile[i].type) {
  case 133:
   dev->limits.num_qps = profile[i].num;
   init_hca->qpc_base = profile[i].start;
   init_hca->log_num_qps = profile[i].log_num;
   break;
  case 140:
   dev->limits.num_eecs = profile[i].num;
   init_hca->eec_base = profile[i].start;
   init_hca->log_num_eecs = profile[i].log_num;
   break;
  case 131:
   dev->limits.num_srqs = profile[i].num;
   init_hca->srqc_base = profile[i].start;
   init_hca->log_num_srqs = profile[i].log_num;
   break;
  case 141:
   dev->limits.num_cqs = profile[i].num;
   init_hca->cqc_base = profile[i].start;
   init_hca->log_num_cqs = profile[i].log_num;
   break;
  case 137:
   init_hca->eqpc_base = profile[i].start;
   break;
  case 139:
   init_hca->eeec_base = profile[i].start;
   break;
  case 138:
   dev->limits.num_eqs = profile[i].num;
   init_hca->eqc_base = profile[i].start;
   init_hca->log_num_eqs = profile[i].log_num;
   break;
  case 132:
   for (dev->qp_table.rdb_shift = 0;
        request->num_qp << dev->qp_table.rdb_shift < profile[i].num;
        ++dev->qp_table.rdb_shift)
    ;
   dev->qp_table.rdb_base = (u32) profile[i].start;
   init_hca->rdb_base = profile[i].start;
   break;
  case 136:
   dev->limits.num_mgms = profile[i].num >> 1;
   dev->limits.num_amgms = profile[i].num >> 1;
   init_hca->mc_base = profile[i].start;
   init_hca->log_mc_entry_sz = ffs(MTHCA_MGM_ENTRY_SIZE) - 1;
   init_hca->log_mc_table_sz = profile[i].log_num;
   init_hca->mc_hash_sz = 1 << (profile[i].log_num - 1);
   break;
  case 135:
   dev->limits.num_mpts = profile[i].num;
   dev->mr_table.mpt_base = profile[i].start;
   init_hca->mpt_base = profile[i].start;
   init_hca->log_mpt_sz = profile[i].log_num;
   break;
  case 134:
   dev->limits.num_mtt_segs = profile[i].num;
   dev->mr_table.mtt_base = profile[i].start;
   init_hca->mtt_base = profile[i].start;
   init_hca->mtt_seg_sz = ffs(dev->limits.mtt_seg_size) - 7;
   break;
  case 130:
   dev->limits.num_uars = profile[i].num;
   init_hca->uar_scratch_base = profile[i].start;
   break;
  case 128:
   dev->av_table.ddr_av_base = profile[i].start;
   dev->av_table.num_ddr_avs = profile[i].num;
   break;
  case 129:
   dev->uar_table.uarc_size = request->uarc_size;
   dev->uar_table.uarc_base = profile[i].start;
   init_hca->uarc_base = profile[i].start;
   init_hca->log_uarc_sz = ffs(request->uarc_size) - 13;
   init_hca->log_uar_sz = ffs(request->num_uar) - 1;
   break;
  default:
   break;
  }
 }





 dev->limits.num_pds = MTHCA_NUM_PDS;

 if (dev->mthca_flags & MTHCA_FLAG_SINAI_OPT &&
     init_hca->log_mpt_sz > 23) {
  mthca_warn(dev, "MPT table too large (requested size 2^%d >= 2^24)\n",
      init_hca->log_mpt_sz);
  mthca_warn(dev, "Disabling memory key throughput optimization.\n");
  dev->mthca_flags &= ~MTHCA_FLAG_SINAI_OPT;
 }
 if (mthca_is_memfree(dev) || BITS_PER_LONG == 64)
  dev->limits.fmr_reserved_mtts = 0;
 else
  dev->limits.fmr_reserved_mtts = request->fmr_reserved_mtts;

 kfree(profile);
 return total_size;
}
