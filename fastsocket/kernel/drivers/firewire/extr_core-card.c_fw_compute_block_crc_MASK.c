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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

int FUNC2(u32 *block)
{
	__be32 be32_block[256];
	int i, length;

	length = (*block >> 16) & 0xff;
	for (i = 0; i < length; i++)
		be32_block[i] = FUNC0(block[i + 1]);
	*block |= FUNC1(0, (u8 *) be32_block, length * 4);

	return length;
}