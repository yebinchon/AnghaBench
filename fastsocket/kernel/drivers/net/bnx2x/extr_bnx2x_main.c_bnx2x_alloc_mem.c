
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union cdu_context {int dummy; } cdu_context ;
struct ilt_line {int dummy; } ;
struct host_sp_status_block {int dummy; } ;
struct bnx2x_slowpath {int dummy; } ;
struct bnx2x {int eq_mapping; int eq_ring; int spq_mapping; int spq; TYPE_2__* ilt; TYPE_1__* context; int slowpath_mapping; int slowpath; int def_status_blk_mapping; int def_status_blk; int t2_mapping; int t2; } ;
struct TYPE_4__ {int lines; } ;
struct TYPE_3__ {int size; int cxt_mapping; int vcxt; } ;


 int BCM_PAGE_SIZE ;
 int BNX2X_ALLOC (int ,int) ;
 int BNX2X_ERR (char*) ;
 int BNX2X_L2_CID_COUNT (struct bnx2x*) ;
 int BNX2X_PCI_ALLOC (int ,int *,int) ;
 int CDU_ILT_PAGE_SZ ;
 int CONFIGURE_NIC_MODE (struct bnx2x*) ;
 int ENOMEM ;
 int ILT_MAX_LINES ;
 int ILT_MEMOP_ALLOC ;
 int NUM_EQ_PAGES ;
 int SRC_T2_SZ ;
 int bnx2x_free_mem (struct bnx2x*) ;
 scalar_t__ bnx2x_ilt_mem_op (struct bnx2x*,int ) ;
 scalar_t__ bnx2x_iov_alloc_mem (struct bnx2x*) ;
 int min (int ,int) ;

int bnx2x_alloc_mem(struct bnx2x *bp)
{
 int i, allocated, context_size;

 if (!CONFIGURE_NIC_MODE(bp) && !bp->t2)

  BNX2X_PCI_ALLOC(bp->t2, &bp->t2_mapping, SRC_T2_SZ);

 BNX2X_PCI_ALLOC(bp->def_status_blk, &bp->def_status_blk_mapping,
   sizeof(struct host_sp_status_block));

 BNX2X_PCI_ALLOC(bp->slowpath, &bp->slowpath_mapping,
   sizeof(struct bnx2x_slowpath));
 context_size = sizeof(union cdu_context) * BNX2X_L2_CID_COUNT(bp);

 for (i = 0, allocated = 0; allocated < context_size; i++) {
  bp->context[i].size = min(CDU_ILT_PAGE_SZ,
       (context_size - allocated));
  BNX2X_PCI_ALLOC(bp->context[i].vcxt,
    &bp->context[i].cxt_mapping,
    bp->context[i].size);
  allocated += bp->context[i].size;
 }
 BNX2X_ALLOC(bp->ilt->lines, sizeof(struct ilt_line) * ILT_MAX_LINES);

 if (bnx2x_ilt_mem_op(bp, ILT_MEMOP_ALLOC))
  goto alloc_mem_err;

 if (bnx2x_iov_alloc_mem(bp))
  goto alloc_mem_err;


 BNX2X_PCI_ALLOC(bp->spq, &bp->spq_mapping, BCM_PAGE_SIZE);


 BNX2X_PCI_ALLOC(bp->eq_ring, &bp->eq_mapping,
   BCM_PAGE_SIZE * NUM_EQ_PAGES);

 return 0;

alloc_mem_err:
 bnx2x_free_mem(bp);
 BNX2X_ERR("Can't allocate memory\n");
 return -ENOMEM;
}
