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

/* Variables and functions */
#define  B43_CCK_RATE_11MB 131 
#define  B43_CCK_RATE_1MB 130 
#define  B43_CCK_RATE_2MB 129 
#define  B43_CCK_RATE_5MB 128 
 int /*<<< orphan*/  FUNC0 (int) ; 

u8 FUNC1(const u8 bitrate)
{
	switch (bitrate) {
	case B43_CCK_RATE_1MB:
		return 0x0A;
	case B43_CCK_RATE_2MB:
		return 0x14;
	case B43_CCK_RATE_5MB:
		return 0x37;
	case B43_CCK_RATE_11MB:
		return 0x6E;
	}
	FUNC0(1);
	return 0;
}