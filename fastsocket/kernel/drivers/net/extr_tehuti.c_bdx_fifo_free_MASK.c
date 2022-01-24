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
struct fifo {int /*<<< orphan*/ * va; int /*<<< orphan*/  da; scalar_t__ memsz; } ;
struct bdx_priv {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENTER ; 
 scalar_t__ FIFO_EXTRA_SPACE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct bdx_priv *priv, struct fifo *f)
{
	ENTER;
	if (f->va) {
		FUNC1(priv->pdev,
				    f->memsz + FIFO_EXTRA_SPACE, f->va, f->da);
		f->va = NULL;
	}
	FUNC0();
}