#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device_node {int dummy; } ;
struct TYPE_3__ {char* of_device; char const* modalias; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*,char const*) ; 
 char* FUNC2 (struct device_node*,char*,int*) ; 
 TYPE_1__* of_modalias_table ; 
 char* FUNC3 (char const*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 

int FUNC5(struct device_node *node, char *modalias, int len)
{
	int i, cplen;
	const char *compatible;
	const char *p;

	/* 1. search for exception list entry */
	for (i = 0; i < FUNC0(of_modalias_table); i++) {
		compatible = of_modalias_table[i].of_device;
		if (!FUNC1(node, compatible))
			continue;
		FUNC4(modalias, of_modalias_table[i].modalias, len);
		return 0;
	}

	compatible = FUNC2(node, "compatible", &cplen);
	if (!compatible)
		return -ENODEV;

	/* 2. take first compatible entry and strip manufacturer */
	p = FUNC3(compatible, ',');
	if (!p)
		return -ENODEV;
	p++;
	FUNC4(modalias, p, len);
	return 0;
}