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
struct ps2dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ps2dev*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ps2dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct ps2dev*) ; 

int FUNC3(struct ps2dev *ps2dev, unsigned char *param, int command)
{
	int rc;

	FUNC1(ps2dev);
	rc = FUNC0(ps2dev, param, command);
	FUNC2(ps2dev);

	return rc;
}