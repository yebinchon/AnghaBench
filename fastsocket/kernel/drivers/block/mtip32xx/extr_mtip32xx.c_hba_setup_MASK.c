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
typedef  int u32 ;
struct driver_data {scalar_t__ mmio; } ;

/* Variables and functions */
 scalar_t__ HOST_HSORG ; 
 int HSORG_DISABLE_SLOTGRP_INTR ; 
 int HSORG_DISABLE_SLOTGRP_PXIS ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static inline void FUNC2(struct driver_data *dd)
{
	u32 hwdata;
	hwdata = FUNC0(dd->mmio + HOST_HSORG);

	/* interrupt bug workaround: use only 1 IS bit.*/
	FUNC1(hwdata |
		HSORG_DISABLE_SLOTGRP_INTR |
		HSORG_DISABLE_SLOTGRP_PXIS,
		dd->mmio + HOST_HSORG);
}