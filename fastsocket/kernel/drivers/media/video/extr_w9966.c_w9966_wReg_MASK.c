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
struct w9966_dev {int ppmode; int /*<<< orphan*/  pport; } ;

/* Variables and functions */
 int IEEE1284_ADDR ; 
 int IEEE1284_DATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned char const*,int) ; 

__attribute__((used)) static int FUNC2(struct w9966_dev* cam, int reg, int data)
{
	// ECP, write, regtransfer, REG, REG, REG, REG, REG
	const unsigned char addr = 0xc0 | (reg & 0x1f);
	const unsigned char val = data;

	if (FUNC0(cam->pport, cam->ppmode | IEEE1284_ADDR) != 0)
		return -1;
	if (FUNC1(cam->pport, &addr, 1) != 1)
		return -1;
	if (FUNC0(cam->pport, cam->ppmode | IEEE1284_DATA) != 0)
		return -1;
	if (FUNC1(cam->pport, &val, 1) != 1)
		return -1;

	return 0;
}