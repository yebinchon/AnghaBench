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
typedef  int u32 ;
struct device_node {int dummy; } ;

/* Variables and functions */
 struct device_node* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int* FUNC1 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 int sysfreq ; 

u32 FUNC3(void)
{
	struct device_node *soc;
	const u32 *prop;
	int size;

	if (sysfreq != -1)
		return sysfreq;

	soc = FUNC0(NULL, "soc");
	if (!soc)
		return -1;

	prop = FUNC1(soc, "clock-frequency", &size);
	if (!prop || size != sizeof(*prop) || *prop == 0)
		prop = FUNC1(soc, "bus-frequency", &size);

	if (prop && size == sizeof(*prop))
		sysfreq = *prop;

	FUNC2(soc);
	return sysfreq;
}