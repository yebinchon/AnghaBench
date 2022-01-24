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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(int bits, unsigned int data, int io)
{
	while (bits--) {
		if (data & 1) {
			FUNC0(5, io);
			FUNC1(6);
			FUNC0(7, io);
			FUNC1(6);
		} else {
			FUNC0(1, io);
			FUNC1(6);
			FUNC0(3, io);
			FUNC1(6);
		}
		data >>= 1;
	}
}