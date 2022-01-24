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
typedef  int /*<<< orphan*/  uint32_t ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int MAX_NR_HVC_CONSOLES ; 
 int /*<<< orphan*/  hvc_get_put_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct device_node*,char*) ; 
 struct device_node* FUNC2 (struct device_node*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 

__attribute__((used)) static int FUNC5(void)
{
	struct device_node *vty;
	int num_found = 0;

	for (vty = FUNC2(NULL, "vty"); vty != NULL;
			vty = FUNC2(vty, "vty")) {
		const uint32_t *vtermno;

		/* We have statically defined space for only a certain number
		 * of console adapters.
		 */
		if (num_found >= MAX_NR_HVC_CONSOLES) {
			FUNC4(vty);
			break;
		}

		vtermno = FUNC3(vty, "reg", NULL);
		if (!vtermno)
			continue;

		if (FUNC1(vty, "hvterm1")) {
			FUNC0(*vtermno, num_found, &hvc_get_put_ops);
			++num_found;
		}
	}

	return num_found;
}