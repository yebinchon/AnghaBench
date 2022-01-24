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
struct ace_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ace_device*,int,int) ; 

__attribute__((used)) static inline void FUNC1(struct ace_device *ace, int reg, u32 val)
{
	FUNC0(ace, reg, val);
	FUNC0(ace, reg + 2, val >> 16);
}