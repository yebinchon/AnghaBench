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
struct saa7134_dev {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAA7135_DSP_RWCLEAR ; 
 int /*<<< orphan*/  SAA7135_DSP_RWCLEAR_RERR ; 
 int /*<<< orphan*/  SAA7135_DSP_RWSTATE ; 
 int SAA7135_DSP_RWSTATE_ERR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static inline int FUNC4(struct saa7134_dev *dev)
{
	int state = FUNC1(SAA7135_DSP_RWSTATE);
	if (FUNC3(state & SAA7135_DSP_RWSTATE_ERR)) {
		FUNC0("%s: resetting error bit\n", dev->name);
		FUNC2(SAA7135_DSP_RWCLEAR, SAA7135_DSP_RWCLEAR_RERR);
	}
	return 0;
}