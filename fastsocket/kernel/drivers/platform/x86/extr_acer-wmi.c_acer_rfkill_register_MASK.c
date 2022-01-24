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
typedef  scalar_t__ u32 ;
struct rfkill {int dummy; } ;
struct device {int dummy; } ;
typedef  enum rfkill_type { ____Placeholder_rfkill_type } rfkill_type ;

/* Variables and functions */
 int ENOMEM ; 
 struct rfkill* FUNC0 (int) ; 
 int /*<<< orphan*/  acer_rfkill_ops ; 
 struct rfkill* FUNC1 (char*,struct device*,int,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct rfkill*) ; 
 int FUNC3 (struct rfkill*) ; 

__attribute__((used)) static struct rfkill *FUNC4(struct device *dev,
					   enum rfkill_type type,
					   char *name, u32 cap)
{
	int err;
	struct rfkill *rfkill_dev;

	rfkill_dev = FUNC1(name, dev, type,
				  &acer_rfkill_ops,
				  (void *)(unsigned long)cap);
	if (!rfkill_dev)
		return FUNC0(-ENOMEM);

	err = FUNC3(rfkill_dev);
	if (err) {
		FUNC2(rfkill_dev);
		return FUNC0(err);
	}
	return rfkill_dev;
}