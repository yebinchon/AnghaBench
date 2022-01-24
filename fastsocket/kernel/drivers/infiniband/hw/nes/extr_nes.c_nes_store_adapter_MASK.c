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
struct device_driver {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ee_flsh_adapter ; 
 int /*<<< orphan*/  FUNC0 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,size_t) ; 

__attribute__((used)) static ssize_t FUNC2(struct device_driver *ddp,
	const char *buf, size_t count)
{
	char *p = (char *)buf;

	ee_flsh_adapter = FUNC0(p, &p, 10);
	return FUNC1(buf, count);
}