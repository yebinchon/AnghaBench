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

/* Variables and functions */
 int FUNC0 (struct device_node*) ; 
 struct device_node* FUNC1 (struct device_node*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 

__attribute__((used)) static int FUNC3(struct device_node *bn)
{
	int ret;

	while (bn) {
		ret = FUNC0(bn);
		if (ret) {
			FUNC2(bn);
			return ret;
		}
		bn = FUNC1(bn, NULL, "ibm,bsr");
	}
	return 0;
}