#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* m_pool_p ;
typedef  int /*<<< orphan*/  m_pool_ident_t ;
struct TYPE_5__ {int /*<<< orphan*/  nump; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,void*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  sym53c8xx_lock ; 

void FUNC5(m_pool_ident_t dev_dmat, void *m, int size, char *name)
{
	unsigned long flags;
	m_pool_p mp;

	FUNC3(&sym53c8xx_lock, flags);
	mp = FUNC1(dev_dmat);
	if (!mp)
		goto out;
	FUNC2(mp, m, size, name);
#ifdef	SYM_MEM_FREE_UNUSED
	if (!mp->nump)
		___del_dma_pool(mp);
#endif
 out:
	FUNC4(&sym53c8xx_lock, flags);
}