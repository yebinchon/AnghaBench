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
typedef  scalar_t__ u32 ;
struct pvscsi_adapter {scalar_t__ mmioBase; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC1(const struct pvscsi_adapter *adapter,
			     u32 offset, u32 val)
{
	FUNC0(val, adapter->mmioBase + offset);
}