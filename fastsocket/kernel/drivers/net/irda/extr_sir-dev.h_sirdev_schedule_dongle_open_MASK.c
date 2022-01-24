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
struct sir_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIRDEV_STATE_DONGLE_OPEN ; 
 int FUNC0 (struct sir_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int FUNC1(struct sir_dev *dev, int dongle_id)
{
	return FUNC0(dev, SIRDEV_STATE_DONGLE_OPEN, dongle_id);
}