#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  msg_enable; } ;
typedef  TYPE_1__ board_info_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct net_device*) ; 

__attribute__((used)) static void FUNC1(struct net_device *dev, u32 value)
{
	board_info_t *dm = FUNC0(dev);

	dm->msg_enable = value;
}