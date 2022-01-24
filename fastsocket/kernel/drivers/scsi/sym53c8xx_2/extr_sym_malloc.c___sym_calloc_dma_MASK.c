#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* m_pool_p ;
typedef  int /*<<< orphan*/  m_pool_ident_t ;
struct TYPE_6__ {int /*<<< orphan*/  nump; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (TYPE_1__*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  sym53c8xx_lock ; 

void *FUNC6(m_pool_ident_t dev_dmat, int size, char *name)
{
	unsigned long flags;
	m_pool_p mp;
	void *m = NULL;

	FUNC4(&sym53c8xx_lock, flags);
	mp = FUNC2(dev_dmat);
	if (!mp)
		mp = FUNC0(dev_dmat);
	if (!mp)
		goto out;
	m = FUNC3(mp, size, name);
#ifdef	SYM_MEM_FREE_UNUSED
	if (!mp->nump)
		___del_dma_pool(mp);
#endif

 out:
	FUNC5(&sym53c8xx_lock, flags);
	return m;
}