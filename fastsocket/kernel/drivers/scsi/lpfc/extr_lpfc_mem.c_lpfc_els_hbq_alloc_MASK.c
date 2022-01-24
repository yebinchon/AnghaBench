#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct lpfc_hba {int /*<<< orphan*/  lpfc_hbq_pool; } ;
struct TYPE_2__ {int /*<<< orphan*/  virt; int /*<<< orphan*/  phys; } ;
struct hbq_dmabuf {int /*<<< orphan*/  size; TYPE_1__ dbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  LPFC_BPL_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct hbq_dmabuf*) ; 
 struct hbq_dmabuf* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct hbq_dmabuf *
FUNC3(struct lpfc_hba *phba)
{
	struct hbq_dmabuf *hbqbp;

	hbqbp = FUNC1(sizeof(struct hbq_dmabuf), GFP_KERNEL);
	if (!hbqbp)
		return NULL;

	hbqbp->dbuf.virt = FUNC2(phba->lpfc_hbq_pool, GFP_KERNEL,
					  &hbqbp->dbuf.phys);
	if (!hbqbp->dbuf.virt) {
		FUNC0(hbqbp);
		return NULL;
	}
	hbqbp->size = LPFC_BPL_SIZE;
	return hbqbp;
}