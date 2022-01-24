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
struct rfkill {int dummy; } ;
struct device {int dummy; } ;
typedef  enum rfkill_type { ____Placeholder_rfkill_type } rfkill_type ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  eeepc_rfkill_ops ; 
 int FUNC0 (int) ; 
 struct rfkill* FUNC1 (char const*,struct device*,int,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct rfkill*) ; 
 int /*<<< orphan*/  FUNC3 (struct rfkill*,int) ; 
 int FUNC4 (struct rfkill*) ; 

__attribute__((used)) static int FUNC5(struct rfkill **rfkill,
			    const char *name, struct device *dev,
			    enum rfkill_type type, int cm)
{
	int result;

	result = FUNC0(cm);
	if (result < 0)
		return result;

	*rfkill = FUNC1(name, dev, type,
			       &eeepc_rfkill_ops, (void *)(unsigned long)cm);

	if (!*rfkill)
		return -EINVAL;

	FUNC3(*rfkill, FUNC0(cm) != 1);
	result = FUNC4(*rfkill);
	if (result) {
		FUNC2(*rfkill);
		*rfkill = NULL;
		return result;
	}
	return 0;
}