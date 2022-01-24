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
struct sbp2_target {int /*<<< orphan*/  unit; } ;
struct fw_device {int dummy; } ;

/* Variables and functions */
 struct fw_device* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct fw_device *FUNC1(struct sbp2_target *tgt)
{
	return FUNC0(tgt->unit);
}