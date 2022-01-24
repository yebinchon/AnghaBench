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
struct uic {int /*<<< orphan*/  lock; scalar_t__ dcrbase; } ;

/* Variables and functions */
 scalar_t__ UIC_SR ; 
 struct uic* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int FUNC4 (unsigned int) ; 

__attribute__((used)) static void FUNC5(unsigned int virq)
{
	struct uic *uic = FUNC0(virq);
	unsigned int src = FUNC4(virq);
	unsigned long flags;

	FUNC2(&uic->lock, flags);
	FUNC1(uic->dcrbase + UIC_SR, 1 << (31-src));
	FUNC3(&uic->lock, flags);
}