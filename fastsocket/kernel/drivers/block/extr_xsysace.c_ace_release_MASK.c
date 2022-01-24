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
typedef  int u16 ;
struct gendisk {struct ace_device* private_data; } ;
struct ace_device {scalar_t__ users; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACE_CTRL ; 
 int ACE_CTRL_LOCKREQ ; 
 int FUNC0 (struct ace_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ace_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct gendisk *disk, fmode_t mode)
{
	struct ace_device *ace = disk->private_data;
	unsigned long flags;
	u16 val;

	FUNC2(ace->dev, "ace_release() users=%i\n", ace->users - 1);

	FUNC3(&ace->lock, flags);
	ace->users--;
	if (ace->users == 0) {
		val = FUNC0(ace, ACE_CTRL);
		FUNC1(ace, ACE_CTRL, val & ~ACE_CTRL_LOCKREQ);
	}
	FUNC4(&ace->lock, flags);
	return 0;
}