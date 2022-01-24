#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct six_axis_t {void* mz; void* my; void* mx; void* fz; void* fy; void* fx; } ;
struct TYPE_2__ {int /*<<< orphan*/  mz; int /*<<< orphan*/  my; int /*<<< orphan*/  mx; int /*<<< orphan*/  fz; int /*<<< orphan*/  fy; int /*<<< orphan*/  fx; } ;
struct jr3_channel {TYPE_1__ min_full_scale; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct six_axis_t FUNC1(volatile struct jr3_channel
					     *channel)
{
	struct six_axis_t result;
	result.fx = FUNC0(&channel->min_full_scale.fx);
	result.fy = FUNC0(&channel->min_full_scale.fy);
	result.fz = FUNC0(&channel->min_full_scale.fz);
	result.mx = FUNC0(&channel->min_full_scale.mx);
	result.my = FUNC0(&channel->min_full_scale.my);
	result.mz = FUNC0(&channel->min_full_scale.mz);
	return result;
}