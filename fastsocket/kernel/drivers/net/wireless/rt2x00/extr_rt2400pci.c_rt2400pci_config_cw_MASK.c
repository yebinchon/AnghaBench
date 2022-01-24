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
typedef  int /*<<< orphan*/  u32 ;
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR11 ; 
 int /*<<< orphan*/  CSR11_CWMAX ; 
 int /*<<< orphan*/  CSR11_CWMIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct rt2x00_dev *rt2x00dev,
				const int cw_min, const int cw_max)
{
	u32 reg;

	FUNC1(rt2x00dev, CSR11, &reg);
	FUNC0(&reg, CSR11_CWMIN, cw_min);
	FUNC0(&reg, CSR11_CWMAX, cw_max);
	FUNC2(rt2x00dev, CSR11, reg);
}