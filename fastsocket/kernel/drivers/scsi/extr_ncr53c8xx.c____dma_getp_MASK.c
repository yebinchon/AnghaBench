#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* next; int /*<<< orphan*/  baddr; scalar_t__ vaddr; } ;
typedef  TYPE_1__ m_vtob_s ;
struct TYPE_7__ {int /*<<< orphan*/  nump; TYPE_1__** vtob; int /*<<< orphan*/  bush; } ;
typedef  TYPE_2__ m_pool_s ;
typedef  scalar_t__ m_addr_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int MEMO_PAGE_ORDER ; 
 int PAGE_SIZE ; 
 int FUNC0 (scalar_t__) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mp0 ; 

__attribute__((used)) static m_addr_t FUNC4(m_pool_s *mp)
{
	m_addr_t vp;
	m_vtob_s *vbp;

	vbp = FUNC1(&mp0, sizeof(*vbp), "VTOB");
	if (vbp) {
		dma_addr_t daddr;
		vp = (m_addr_t) FUNC3(mp->bush,
						PAGE_SIZE<<MEMO_PAGE_ORDER,
						&daddr, GFP_ATOMIC);
		if (vp) {
			int hc = FUNC0(vp);
			vbp->vaddr = vp;
			vbp->baddr = daddr;
			vbp->next = mp->vtob[hc];
			mp->vtob[hc] = vbp;
			++mp->nump;
			return vp;
		}
	}
	if (vbp)
		FUNC2(&mp0, vbp, sizeof(*vbp), "VTOB");
	return 0;
}