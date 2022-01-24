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
struct ioc3 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ioc3*,int) ; 

__attribute__((used)) static void FUNC1(struct ioc3 *ioc3, int byte)
{
	int i, bit;

	for (i = 8; i; i--) {
		bit = byte & 1;
		byte >>= 1;

		FUNC0(ioc3, bit);
	}
}