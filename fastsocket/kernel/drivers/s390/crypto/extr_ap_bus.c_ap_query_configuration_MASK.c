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
struct ap_config_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ap_configuration ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void)
{
#ifdef CONFIG_64BIT
	if (ap_configuration_available()) {
		if (!ap_configuration)
			ap_configuration =
				kzalloc(sizeof(struct ap_config_info),
					GFP_KERNEL);
		if (ap_configuration)
			__ap_query_configuration(ap_configuration);
	} else
		ap_configuration = NULL;
#else
	ap_configuration = NULL;
#endif
}