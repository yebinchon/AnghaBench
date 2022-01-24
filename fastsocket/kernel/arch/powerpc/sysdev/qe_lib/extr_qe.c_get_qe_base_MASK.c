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
typedef  int /*<<< orphan*/  u32 ;
struct device_node {int dummy; } ;
typedef  int phys_addr_t ;

/* Variables and functions */
 struct device_node* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 struct device_node* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 int FUNC4 (struct device_node*,int /*<<< orphan*/  const*) ; 
 int qebase ; 

phys_addr_t FUNC5(void)
{
	struct device_node *qe;
	int size;
	const u32 *prop;

	if (qebase != -1)
		return qebase;

	qe = FUNC0(NULL, NULL, "fsl,qe");
	if (!qe) {
		qe = FUNC1(NULL, "qe");
		if (!qe)
			return qebase;
	}

	prop = FUNC2(qe, "reg", &size);
	if (prop && size >= sizeof(*prop))
		qebase = FUNC4(qe, prop);
	FUNC3(qe);

	return qebase;
}