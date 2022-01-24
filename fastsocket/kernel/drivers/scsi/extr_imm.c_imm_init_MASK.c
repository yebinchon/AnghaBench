#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  base; } ;
typedef  TYPE_1__ imm_struct ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(imm_struct *dev)
{
	if (FUNC1(dev, 0) != 1)
		return -EIO;
	FUNC3(dev->base);
	FUNC4(1);	/* Delay to allow devices to settle */
	FUNC2(dev);
	FUNC4(1);	/* Another delay to allow devices to settle */
	return FUNC0(dev);
}