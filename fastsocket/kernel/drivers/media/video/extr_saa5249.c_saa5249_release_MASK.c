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
struct saa5249_device {int /*<<< orphan*/  in_use; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct saa5249_device*,int,int,int,...) ; 
 struct saa5249_device* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file)
{
	struct saa5249_device *t = FUNC2(file);

	FUNC1(t, 1, 0x20, -1);		/* Turn off CCT */
	FUNC1(t, 5, 3, 3, -1);		/* Turn off TV-display */
	FUNC0(0, &t->in_use);
	return 0;
}