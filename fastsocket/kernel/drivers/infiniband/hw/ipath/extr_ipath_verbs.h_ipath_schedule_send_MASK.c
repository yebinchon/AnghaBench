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
struct ipath_qp {int s_flags; int /*<<< orphan*/  s_task; } ;

/* Variables and functions */
 int IPATH_S_ANY_WAIT ; 
 int IPATH_S_BUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC1(struct ipath_qp *qp)
{
	if (qp->s_flags & IPATH_S_ANY_WAIT)
		qp->s_flags &= ~IPATH_S_ANY_WAIT;
	if (!(qp->s_flags & IPATH_S_BUSY))
		FUNC0(&qp->s_task);
}