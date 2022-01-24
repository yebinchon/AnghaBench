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
struct six_axis_t {int fx; int fy; int fz; int mx; int my; int mz; } ;
struct TYPE_2__ {int /*<<< orphan*/  mz; int /*<<< orphan*/  my; int /*<<< orphan*/  mx; int /*<<< orphan*/  fz; int /*<<< orphan*/  fy; int /*<<< orphan*/  fx; } ;
struct jr3_channel {int /*<<< orphan*/  command_word0; TYPE_1__ full_scale; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(volatile struct jr3_channel *channel,
			    struct six_axis_t full_scale)
{
	FUNC0("%d %d %d %d %d %d\n",
	       full_scale.fx,
	       full_scale.fy,
	       full_scale.fz, full_scale.mx, full_scale.my, full_scale.mz);
	FUNC1(&channel->full_scale.fx, full_scale.fx);
	FUNC1(&channel->full_scale.fy, full_scale.fy);
	FUNC1(&channel->full_scale.fz, full_scale.fz);
	FUNC1(&channel->full_scale.mx, full_scale.mx);
	FUNC1(&channel->full_scale.my, full_scale.my);
	FUNC1(&channel->full_scale.mz, full_scale.mz);
	FUNC1(&channel->command_word0, 0x0a00);
}