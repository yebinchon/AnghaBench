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
struct s2255_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct s2255_dev*,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct s2255_dev *dev)
{
	FUNC1(dev, 0x40, 0x0b0b, 0x0b0b, NULL, 0, 1);
	FUNC0(10);
	FUNC1(dev, 0x50, 0x0000, 0x0000, NULL, 0, 1);
	return;
}