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
struct cn_dev {int /*<<< orphan*/  cbdev; } ;
struct cb_id {int dummy; } ;

/* Variables and functions */
 struct cn_dev cdev ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct cb_id*) ; 

void FUNC1(struct cb_id *id)
{
	struct cn_dev *dev = &cdev;

	FUNC0(dev->cbdev, id);
}