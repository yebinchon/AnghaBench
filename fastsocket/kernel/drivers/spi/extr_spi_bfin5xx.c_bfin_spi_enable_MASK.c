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
typedef  int u16 ;
struct driver_data {int dummy; } ;

/* Variables and functions */
 int BIT_CTL_ENABLE ; 
 int FUNC0 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct driver_data*,int) ; 

__attribute__((used)) static void FUNC2(struct driver_data *drv_data)
{
	u16 cr;

	cr = FUNC0(drv_data);
	FUNC1(drv_data, (cr | BIT_CTL_ENABLE));
}