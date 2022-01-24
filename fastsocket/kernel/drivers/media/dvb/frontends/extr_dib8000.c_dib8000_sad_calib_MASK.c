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
struct dib8000_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dib8000_state*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct dib8000_state *state)
{
/* internal */
	FUNC0(state, 923, (0 << 1) | (0 << 0));
	FUNC0(state, 924, 776);	// 0.625*3.3 / 4096

	/* do the calibration */
	FUNC0(state, 923, (1 << 0));
	FUNC0(state, 923, (0 << 0));

	FUNC1(1);
	return 0;
}