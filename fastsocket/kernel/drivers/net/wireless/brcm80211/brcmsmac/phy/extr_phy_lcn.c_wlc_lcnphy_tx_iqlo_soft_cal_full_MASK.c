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
struct lcnphy_unsign16_struct {int dummy; } ;
struct brcms_phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct brcms_phy*,int,int,int) ; 
 struct lcnphy_unsign16_struct FUNC1 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_phy*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct brcms_phy *pi)
{
	struct lcnphy_unsign16_struct iqcc0, locc2, locc3, locc4;

	FUNC2(pi, 0, 0, 0);
	FUNC2(pi, 2, 0, 0);
	FUNC2(pi, 3, 0, 0);
	FUNC2(pi, 4, 0, 0);

	FUNC0(pi, 4, 0, 0);
	FUNC0(pi, 3, 0, 0);
	FUNC0(pi, 2, 3, 2);
	FUNC0(pi, 0, 5, 8);
	FUNC0(pi, 2, 2, 1);
	FUNC0(pi, 0, 4, 3);

	iqcc0 = FUNC1(pi, 0);
	locc2 = FUNC1(pi, 2);
	locc3 = FUNC1(pi, 3);
	locc4 = FUNC1(pi, 4);
}