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
struct ttusb {int /*<<< orphan*/  dev; int /*<<< orphan*/  isoc_in_pipe; int /*<<< orphan*/  bulk_in_pipe; int /*<<< orphan*/  bulk_out_pipe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct ttusb *ttusb)
{
	FUNC2(ttusb->dev, 1, 1);

	ttusb->bulk_out_pipe = FUNC3(ttusb->dev, 1);
	ttusb->bulk_in_pipe = FUNC0(ttusb->dev, 1);
	ttusb->isoc_in_pipe = FUNC1(ttusb->dev, 2);

	return 0;
}