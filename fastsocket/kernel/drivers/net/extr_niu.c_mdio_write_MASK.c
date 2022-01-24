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
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  MIF_FRAME_OUTPUT ; 
 int FUNC2 (struct niu*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct niu *np, int port, int dev, int reg, int data)
{
	int err;

	FUNC3(MIF_FRAME_OUTPUT, FUNC0(port, dev, reg));
	err = FUNC2(np);
	if (err < 0)
		return err;

	FUNC3(MIF_FRAME_OUTPUT, FUNC1(port, dev, data));
	err = FUNC2(np);
	if (err < 0)
		return err;

	return 0;
}