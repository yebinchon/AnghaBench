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
struct niu {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct niu*) ; 
 int FUNC1 (struct niu*) ; 
 int FUNC2 (struct niu*) ; 
 int FUNC3 (struct niu*) ; 

__attribute__((used)) static int FUNC4(struct niu *np)
{
	int err;

	err = FUNC1(np);
	if (err)
		return err;

	err = FUNC0(np);
	if (err)
		return err;

	err = FUNC2(np);
	if (err)
		return err;

	err =  FUNC3(np);
	if (err)
		return err;

	return 0;
}