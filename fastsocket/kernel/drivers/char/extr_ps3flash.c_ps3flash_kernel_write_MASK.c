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
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  ps3flash_dev ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,void const*,size_t,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC2(const void *buf, size_t count,
				     loff_t pos)
{
	ssize_t res;
	int wb;

	res = FUNC0(NULL, buf, count, &pos);
	if (res < 0)
		return res;

	/* Make kernel writes synchronous */
	wb = FUNC1(ps3flash_dev);
	if (wb)
		return wb;

	return res;
}