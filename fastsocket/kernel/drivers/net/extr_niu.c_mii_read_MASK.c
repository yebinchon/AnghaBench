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
struct niu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIF_FRAME_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (struct niu*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct niu *np, int port, int reg)
{
	FUNC2(MIF_FRAME_OUTPUT, FUNC0(port, reg));
	return FUNC1(np);
}