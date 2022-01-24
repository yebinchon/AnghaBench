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
struct efx_filter_spec {int flags; scalar_t__ type; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EFX_FILTER_FLAG_RX ; 
 int EFX_FILTER_FLAG_TX ; 
 scalar_t__ EFX_FILTER_MC_DEF ; 
 scalar_t__ EFX_FILTER_UNSPEC ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC2(struct efx_filter_spec *spec)
{
	FUNC0(!(spec->flags &
			      (EFX_FILTER_FLAG_RX | EFX_FILTER_FLAG_TX)));

	if (spec->type != EFX_FILTER_UNSPEC)
		return -EINVAL;

	spec->type = EFX_FILTER_MC_DEF;
	FUNC1(spec->data, 0, sizeof(spec->data)); /* ensure equality */
	return 0;
}