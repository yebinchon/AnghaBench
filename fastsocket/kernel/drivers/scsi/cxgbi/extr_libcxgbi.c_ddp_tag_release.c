
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct cxgbi_hba {struct cxgbi_device* cdev; } ;
struct cxgbi_gather_list {int nelem; } ;
struct cxgbi_device {int (* csk_ddp_clear ) (struct cxgbi_hba*,size_t,size_t,unsigned int) ;struct cxgbi_ddp_info* ddp; } ;
struct cxgbi_ddp_info {size_t idx_mask; size_t nppods; int pdev; struct cxgbi_gather_list** gl_map; } ;


 int CXGBI_DBG_DDP ;
 size_t PPOD_IDX_SHIFT ;
 int PPOD_PAGES_MAX ;
 int PPOD_PAGES_SHIFT ;
 int ddp_release_gl (struct cxgbi_gather_list*,int ) ;
 int ddp_unmark_entries (struct cxgbi_ddp_info*,size_t,unsigned int) ;
 int log_debug (int,char*,size_t,size_t,unsigned int) ;
 int pr_warn (char*,size_t,size_t,...) ;
 int stub1 (struct cxgbi_hba*,size_t,size_t,unsigned int) ;

__attribute__((used)) static void ddp_tag_release(struct cxgbi_hba *chba, u32 tag)
{
 struct cxgbi_device *cdev = chba->cdev;
 struct cxgbi_ddp_info *ddp = cdev->ddp;
 u32 idx;

 idx = (tag >> PPOD_IDX_SHIFT) & ddp->idx_mask;
 if (idx < ddp->nppods) {
  struct cxgbi_gather_list *gl = ddp->gl_map[idx];
  unsigned int npods;

  if (!gl || !gl->nelem) {
   pr_warn("tag 0x%x, idx %u, gl 0x%p, %u.\n",
    tag, idx, gl, gl ? gl->nelem : 0);
   return;
  }
  npods = (gl->nelem + PPOD_PAGES_MAX - 1) >> PPOD_PAGES_SHIFT;
  log_debug(1 << CXGBI_DBG_DDP,
   "tag 0x%x, release idx %u, npods %u.\n",
   tag, idx, npods);
  cdev->csk_ddp_clear(chba, tag, idx, npods);
  ddp_unmark_entries(ddp, idx, npods);
  ddp_release_gl(gl, ddp->pdev);
 } else
  pr_warn("tag 0x%x, idx %u > max %u.\n", tag, idx, ddp->nppods);
}
