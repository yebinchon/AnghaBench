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
struct sys_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;
struct node {TYPE_1__ sysdev; } ;
struct cpumask {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NR_CPUS ; 
 int PAGE_SIZE ; 
 int FUNC1 (char*,int,struct cpumask const*) ; 
 struct cpumask* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int,struct cpumask const*) ; 
 struct node* FUNC4 (struct sys_device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct sys_device *dev, int type, char *buf)
{
	struct node *node_dev = FUNC4(dev);
	const struct cpumask *mask = FUNC2(node_dev->sysdev.id);
	int len;

	/* 2008/04/07: buf currently PAGE_SIZE, need 9 chars per 32 bits. */
	FUNC0((NR_CPUS/32 * 9) > (PAGE_SIZE-1));

	len = type?
		FUNC1(buf, PAGE_SIZE-2, mask) :
		FUNC3(buf, PAGE_SIZE-2, mask);
 	buf[len++] = '\n';
 	buf[len] = '\0';
	return len;
}