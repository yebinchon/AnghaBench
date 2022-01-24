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
typedef  int /*<<< orphan*/  u16 ;
struct brcms_phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct brcms_phy*,int,int,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u16 FUNC1(struct brcms_phy *pi)
{
	u16 m0m1;

	FUNC0(pi, 15, 1, 87, 16, &m0m1);

	return m0m1;
}