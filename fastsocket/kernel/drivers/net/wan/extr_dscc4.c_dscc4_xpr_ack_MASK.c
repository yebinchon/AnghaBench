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
struct dscc4_dev_priv {int iqtx_current; int flags; int* iqtx; } ;
typedef  scalar_t__ s8 ;

/* Variables and functions */
 int EAGAIN ; 
 int IRQ_RING_SIZE ; 
 int NeedIDR ; 
 int NeedIDT ; 
 int /*<<< orphan*/  Xpr ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static inline int FUNC3(struct dscc4_dev_priv *dpriv)
{
	int cur = dpriv->iqtx_current%IRQ_RING_SIZE;
	s8 i = 0;

	do {
		if (!(dpriv->flags & (NeedIDR | NeedIDT)) ||
		    (dpriv->iqtx[cur] & FUNC0(Xpr)))
			break;
		FUNC2();
		FUNC1(10);
	} while (++i > 0);

	return (i >= 0 ) ? i : -EAGAIN;
}