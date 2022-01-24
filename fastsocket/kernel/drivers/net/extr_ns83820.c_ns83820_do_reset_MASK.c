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
struct ns83820 {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ CR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct ns83820 *dev, u32 which)
{
	FUNC0("resetting chip...\n");
	FUNC3(which, dev->base + CR);
	do {
		FUNC2();
	} while (FUNC1(dev->base + CR) & which);
	FUNC0("okay!\n");
}