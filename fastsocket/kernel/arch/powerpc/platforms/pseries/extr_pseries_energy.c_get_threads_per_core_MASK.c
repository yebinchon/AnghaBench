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
 int nr_threads_per_core ; 
 struct device_node* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int* FUNC1 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 

__attribute__((used)) static void FUNC3(void)
{
	struct device_node *dn = NULL;
	int len;
	const int *intserv;

	nr_threads_per_core = 1; /* default */

	dn = FUNC0(NULL, "cpu");
	intserv = FUNC1(dn, "ibm,ppc-interrupt-server#s", &len);
	if (intserv)
		nr_threads_per_core = len / sizeof(int);

	FUNC2(dn);
}