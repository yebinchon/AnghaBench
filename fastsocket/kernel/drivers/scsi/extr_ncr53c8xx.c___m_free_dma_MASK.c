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
typedef  int /*<<< orphan*/  u_long ;
struct m_pool {int /*<<< orphan*/  nump; } ;
typedef  int /*<<< orphan*/  m_bush_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct m_pool*) ; 
 struct m_pool* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct m_pool*,void*,int,char*) ; 
 int /*<<< orphan*/  ncr53c8xx_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(m_bush_t bush, void *m, int size, char *name)
{
	u_long flags;
	struct m_pool *mp;

	FUNC3(&ncr53c8xx_lock, flags);
	mp = FUNC1(bush);
	if (mp)
		FUNC2(mp, m, size, name);
	if (mp && !mp->nump)
		FUNC0(mp);
	FUNC4(&ncr53c8xx_lock, flags);
}