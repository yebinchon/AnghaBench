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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAX_XOR_BLOCKS ; 
 int /*<<< orphan*/  XOR_SIZE ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ,void*,void**) ; 

__attribute__((used)) static void FUNC2(unsigned n, unsigned long **data)
{
	FUNC0(n < 2 || n > MAX_XOR_BLOCKS + 1);
	FUNC1(n - 1, XOR_SIZE, (void *) data[0], (void **) data + 1);
}