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
struct r592_device {scalar_t__ mmio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static inline void FUNC3(struct r592_device *dev,
							int address, u32 mask)
{
	u32 reg = FUNC1(dev->mmio + address);
	FUNC0("reg #%02d |= 0x%08x (old =0x%08x)", address, mask, reg);
	FUNC2(reg | mask , dev->mmio + address);
}