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

/* Variables and functions */
 scalar_t__ PCNET32_DWIO_BDP ; 
 scalar_t__ PCNET32_DWIO_RAP ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static u16 FUNC2(unsigned long addr, int index)
{
	FUNC1(index, addr + PCNET32_DWIO_RAP);
	return (FUNC0(addr + PCNET32_DWIO_BDP) & 0xffff);
}