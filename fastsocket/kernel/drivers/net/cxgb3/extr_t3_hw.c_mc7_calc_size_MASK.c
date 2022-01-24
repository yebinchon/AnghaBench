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

/* Variables and functions */
 int F_BKS ; 
 int F_ORG ; 
 unsigned int FUNC0 (int) ; 
 unsigned int FUNC1 (int) ; 

__attribute__((used)) static unsigned int FUNC2(u32 cfg)
{
	unsigned int width = FUNC1(cfg);
	unsigned int banks = !!(cfg & F_BKS) + 1;
	unsigned int org = !!(cfg & F_ORG) + 1;
	unsigned int density = FUNC0(cfg);
	unsigned int MBs = ((256 << density) * banks) / (org << width);

	return MBs << 20;
}