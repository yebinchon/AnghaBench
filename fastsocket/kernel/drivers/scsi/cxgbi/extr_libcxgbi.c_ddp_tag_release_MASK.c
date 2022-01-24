#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  size_t u32 ;
struct cxgbi_hba {struct cxgbi_device* cdev; } ;
struct cxgbi_gather_list {int nelem; } ;
struct cxgbi_device {int /*<<< orphan*/  (* csk_ddp_clear ) (struct cxgbi_hba*,size_t,size_t,unsigned int) ;struct cxgbi_ddp_info* ddp; } ;
struct cxgbi_ddp_info {size_t idx_mask; size_t nppods; int /*<<< orphan*/  pdev; struct cxgbi_gather_list** gl_map; } ;

/* Variables and functions */
 int CXGBI_DBG_DDP ; 
 size_t PPOD_IDX_SHIFT ; 
 int PPOD_PAGES_MAX ; 
 int PPOD_PAGES_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct cxgbi_gather_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cxgbi_ddp_info*,size_t,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,size_t,size_t,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,size_t,...) ; 
 int /*<<< orphan*/  FUNC4 (struct cxgbi_hba*,size_t,size_t,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct cxgbi_hba *chba, u32 tag)
{
	struct cxgbi_device *cdev = chba->cdev;
	struct cxgbi_ddp_info *ddp = cdev->ddp;
	u32 idx;

	idx = (tag >> PPOD_IDX_SHIFT) & ddp->idx_mask;
	if (idx < ddp->nppods) {
		struct cxgbi_gather_list *gl = ddp->gl_map[idx];
		unsigned int npods;

		if (!gl || !gl->nelem) {
			FUNC3("tag 0x%x, idx %u, gl 0x%p, %u.\n",
				tag, idx, gl, gl ? gl->nelem : 0);
			return;
		}
		npods = (gl->nelem + PPOD_PAGES_MAX - 1) >> PPOD_PAGES_SHIFT;
		FUNC2(1 << CXGBI_DBG_DDP,
			"tag 0x%x, release idx %u, npods %u.\n",
			tag, idx, npods);
		cdev->csk_ddp_clear(chba, tag, idx, npods);
		FUNC1(ddp, idx, npods);
		FUNC0(gl, ddp->pdev);
	} else
		FUNC3("tag 0x%x, idx %u > max %u.\n", tag, idx, ddp->nppods);
}