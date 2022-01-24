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
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  phandle ;

/* Variables and functions */
 int OF_IMAP_NO_PHANDLE ; 
 struct device_node* FUNC0 (int /*<<< orphan*/  const) ; 
 struct device_node* FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/ * FUNC2 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct device_node* of_irq_dflt_pic ; 
 int of_irq_workarounds ; 
 struct device_node* FUNC3 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 

__attribute__((used)) static struct device_node *FUNC5(struct device_node *child)
{
	struct device_node *p;
	const phandle *parp;

	if (!FUNC3(child))
		return NULL;

	do {
		parp = FUNC2(child, "interrupt-parent", NULL);
		if (parp == NULL)
			p = FUNC1(child);
		else {
			if (of_irq_workarounds & OF_IMAP_NO_PHANDLE)
				p = FUNC3(of_irq_dflt_pic);
			else
				p = FUNC0(*parp);
		}
		FUNC4(child);
		child = p;
	} while (p && FUNC2(p, "#interrupt-cells", NULL) == NULL);

	return p;
}