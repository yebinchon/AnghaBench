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
struct serio {int dummy; } ;
struct hil_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hil_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct serio*) ; 
 struct hil_dev* FUNC4 (struct serio*) ; 
 int /*<<< orphan*/  FUNC5 (struct serio*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct serio *serio)
{
	struct hil_dev *dev = FUNC4(serio);

	FUNC0(dev == NULL);

	FUNC3(serio);
	FUNC1(dev->dev);
	FUNC5(serio, NULL);
	FUNC2(dev);
}