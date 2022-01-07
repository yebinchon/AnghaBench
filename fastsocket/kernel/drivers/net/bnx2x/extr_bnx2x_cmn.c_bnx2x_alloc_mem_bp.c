
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msix_entry {int dummy; } ;
struct bnx2x_sp_objs {int dummy; } ;
struct bnx2x_ilt {int dummy; } ;
struct bnx2x_fp_txdata {int dummy; } ;
struct bnx2x_fp_stats {int dummy; } ;
struct bnx2x_fastpath {void* tpa_info; } ;
struct bnx2x_agg_info {int dummy; } ;
struct bnx2x {int igu_sb_cnt; int fp_array_size; struct bnx2x_ilt* ilt; struct msix_entry* msix_table; void* bnx2x_txq; void* fp_stats; void* sp_objs; struct bnx2x_fastpath* fp; } ;


 int BNX2X_DEV_INFO (char*,int) ;
 int BNX2X_MAX_RSS_COUNT (struct bnx2x*) ;
 int BNX2X_MULTI_TX_COS ;
 int CNIC_SUPPORT (struct bnx2x*) ;
 int ENOMEM ;
 int ETH_MAX_AGGREGATION_QUEUES_E1H_E2 ;
 int GFP_KERNEL ;
 scalar_t__ IS_PF (struct bnx2x*) ;
 int bnx2x_free_mem_bp (struct bnx2x*) ;
 void* kcalloc (int,int,int ) ;
 struct bnx2x_ilt* kzalloc (int,int ) ;

int bnx2x_alloc_mem_bp(struct bnx2x *bp)
{
 struct bnx2x_fastpath *fp;
 struct msix_entry *tbl;
 struct bnx2x_ilt *ilt;
 int msix_table_size = 0;
 int fp_array_size, txq_array_size;
 int i;





 msix_table_size = bp->igu_sb_cnt;
 if (IS_PF(bp))
  msix_table_size++;
 BNX2X_DEV_INFO("msix_table_size %d\n", msix_table_size);


 fp_array_size = BNX2X_MAX_RSS_COUNT(bp) + CNIC_SUPPORT(bp);
 bp->fp_array_size = fp_array_size;
 BNX2X_DEV_INFO("fp_array_size %d\n", bp->fp_array_size);

 fp = kcalloc(bp->fp_array_size, sizeof(*fp), GFP_KERNEL);
 if (!fp)
  goto alloc_err;
 for (i = 0; i < bp->fp_array_size; i++) {
  fp[i].tpa_info =
   kcalloc(ETH_MAX_AGGREGATION_QUEUES_E1H_E2,
    sizeof(struct bnx2x_agg_info), GFP_KERNEL);
  if (!(fp[i].tpa_info))
   goto alloc_err;
 }

 bp->fp = fp;


 bp->sp_objs = kcalloc(bp->fp_array_size, sizeof(struct bnx2x_sp_objs),
         GFP_KERNEL);
 if (!bp->sp_objs)
  goto alloc_err;


 bp->fp_stats = kcalloc(bp->fp_array_size, sizeof(struct bnx2x_fp_stats),
          GFP_KERNEL);
 if (!bp->fp_stats)
  goto alloc_err;


 txq_array_size =
  BNX2X_MAX_RSS_COUNT(bp) * BNX2X_MULTI_TX_COS + CNIC_SUPPORT(bp);
 BNX2X_DEV_INFO("txq_array_size %d", txq_array_size);

 bp->bnx2x_txq = kcalloc(txq_array_size, sizeof(struct bnx2x_fp_txdata),
    GFP_KERNEL);
 if (!bp->bnx2x_txq)
  goto alloc_err;


 tbl = kcalloc(msix_table_size, sizeof(*tbl), GFP_KERNEL);
 if (!tbl)
  goto alloc_err;
 bp->msix_table = tbl;


 ilt = kzalloc(sizeof(*ilt), GFP_KERNEL);
 if (!ilt)
  goto alloc_err;
 bp->ilt = ilt;

 return 0;
alloc_err:
 bnx2x_free_mem_bp(bp);
 return -ENOMEM;
}
