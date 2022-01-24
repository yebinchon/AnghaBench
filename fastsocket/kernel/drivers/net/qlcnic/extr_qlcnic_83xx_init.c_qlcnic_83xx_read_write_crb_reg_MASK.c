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
struct qlcnic_adapter {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct qlcnic_adapter *p_dev,
					   u32 raddr, u32 waddr)
{
	int value;

	value = FUNC0(p_dev, raddr);
	FUNC1(p_dev, waddr, value);
}