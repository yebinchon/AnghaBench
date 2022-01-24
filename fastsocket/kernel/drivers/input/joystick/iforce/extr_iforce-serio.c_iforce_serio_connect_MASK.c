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
struct serio_driver {int dummy; } ;
struct serio {int dummy; } ;
struct iforce {struct serio* serio; int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IFORCE_232 ; 
 int FUNC0 (struct iforce*) ; 
 int /*<<< orphan*/  FUNC1 (struct iforce*) ; 
 struct iforce* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct serio*) ; 
 int FUNC4 (struct serio*,struct serio_driver*) ; 
 int /*<<< orphan*/  FUNC5 (struct serio*,struct iforce*) ; 

__attribute__((used)) static int FUNC6(struct serio *serio, struct serio_driver *drv)
{
	struct iforce *iforce;
	int err;

	iforce = FUNC2(sizeof(struct iforce), GFP_KERNEL);
	if (!iforce)
		return -ENOMEM;

	iforce->bus = IFORCE_232;
	iforce->serio = serio;

	FUNC5(serio, iforce);

	err = FUNC4(serio, drv);
	if (err)
		goto fail1;

	err = FUNC0(iforce);
	if (err)
		goto fail2;

	return 0;

 fail2:	FUNC3(serio);
 fail1:	FUNC5(serio, NULL);
	FUNC1(iforce);
	return err;
}