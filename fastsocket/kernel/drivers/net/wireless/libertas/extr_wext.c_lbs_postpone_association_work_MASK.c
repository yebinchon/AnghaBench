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
struct lbs_private {int /*<<< orphan*/  assoc_work; int /*<<< orphan*/  work_thread; scalar_t__ surpriseremoved; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline void FUNC2(struct lbs_private *priv)
{
	if (priv->surpriseremoved)
		return;
	FUNC0(&priv->assoc_work);
	FUNC1(priv->work_thread, &priv->assoc_work, HZ / 2);
}