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
struct of_bus {scalar_t__ (* match ) (struct device_node*) ;} ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct of_bus*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct of_bus* of_busses ; 
 scalar_t__ FUNC2 (struct device_node*) ; 

__attribute__((used)) static struct of_bus *FUNC3(struct device_node *np)
{
	int i;

	for (i = 0; i < FUNC0(of_busses); i++)
		if (!of_busses[i].match || of_busses[i].match(np))
			return &of_busses[i];
	FUNC1();
	return NULL;
}