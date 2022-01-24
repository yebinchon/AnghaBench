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
struct walkera_dev {int /*<<< orphan*/  parport; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 struct walkera_dev* FUNC0 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct input_dev *dev)
{
	struct walkera_dev *w = FUNC0(dev);

	FUNC1(w->parport);
	return 0;
}