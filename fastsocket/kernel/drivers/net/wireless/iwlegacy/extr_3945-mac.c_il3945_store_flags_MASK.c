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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct il_priv {int /*<<< orphan*/  mutex; TYPE_1__ staging; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct il_priv* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct il_priv*) ; 
 scalar_t__ FUNC5 (struct il_priv*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC10(struct device *d, struct device_attribute *attr,
		   const char *buf, size_t count)
{
	struct il_priv *il = FUNC3(d);
	u32 flags = FUNC9(buf, NULL, 0);

	FUNC7(&il->mutex);
	if (FUNC6(il->staging.flags) != flags) {
		/* Cancel any currently running scans... */
		if (FUNC5(il, 100))
			FUNC1("Could not cancel scan.\n");
		else {
			FUNC0("Committing rxon.flags = 0x%04X\n", flags);
			il->staging.flags = FUNC2(flags);
			FUNC4(il);
		}
	}
	FUNC8(&il->mutex);

	return count;
}