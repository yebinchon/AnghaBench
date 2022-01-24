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
struct brcms_phy {int dummy; } ;
typedef  int /*<<< orphan*/  s8 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_phy*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s8 FUNC2(struct brcms_phy *pi)
{
	if (FUNC0(pi))
		return FUNC1(pi, 0);
	else
		return 0;
}