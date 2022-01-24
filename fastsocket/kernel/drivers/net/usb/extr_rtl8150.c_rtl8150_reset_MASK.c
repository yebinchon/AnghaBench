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
typedef  int u8 ;
typedef  int /*<<< orphan*/  rtl8150_t ;

/* Variables and functions */
 int /*<<< orphan*/  CR ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static int FUNC2(rtl8150_t * dev)
{
	u8 data = 0x10;
	int i = HZ;

	FUNC1(dev, CR, 1, &data);
	do {
		FUNC0(dev, CR, 1, &data);
	} while ((data & 0x10) && --i);

	return (i > 0) ? 1 : 0;
}