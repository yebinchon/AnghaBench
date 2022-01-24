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
struct bna_rxf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNA_HARD_CLEANUP ; 
 scalar_t__ FUNC0 (struct bna_rxf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct bna_rxf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct bna_rxf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct bna_rxf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct bna_rxf *rxf)
{
	if (FUNC3(rxf, BNA_HARD_CLEANUP))
		return 1;

	if (FUNC1(rxf, BNA_HARD_CLEANUP))
		return 1;

	if (FUNC2(rxf, BNA_HARD_CLEANUP))
		return 1;

	if (FUNC0(rxf, BNA_HARD_CLEANUP))
		return 1;

	return 0;
}