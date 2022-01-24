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

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  MAX_RXCH ; 
 int MAX_TXCH ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rxch_free ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(void)
{
	int bit;
retry:
	bit = FUNC0(rxch_free, MAX_RXCH);
	if (bit >= MAX_TXCH)
		return -ENOSPC;
	if (!FUNC1(bit, rxch_free))
		goto retry;

	return bit;
}