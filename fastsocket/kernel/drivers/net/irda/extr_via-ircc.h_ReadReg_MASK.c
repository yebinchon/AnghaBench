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
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 

__attribute__((used)) static __u8 FUNC1(unsigned int BaseAddr, int iRegNum)
{
	return ((__u8) FUNC0(BaseAddr + iRegNum));
}