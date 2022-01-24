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
struct desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct desc*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int) ; 

__attribute__((used)) static inline void FUNC3(unsigned int queue, u32 phys,
				  struct desc *desc)
{
	FUNC1(phys, desc);
	FUNC0(phys & 0x1F);
	FUNC2(queue, phys);
	/* Don't check for queue overflow here, we've allocated sufficient
	   length and queues >= 32 don't support this check anyway. */
}