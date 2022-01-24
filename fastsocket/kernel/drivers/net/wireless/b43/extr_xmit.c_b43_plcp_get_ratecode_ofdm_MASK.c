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
#define  B43_OFDM_RATE_12MB 135 
#define  B43_OFDM_RATE_18MB 134 
#define  B43_OFDM_RATE_24MB 133 
#define  B43_OFDM_RATE_36MB 132 
#define  B43_OFDM_RATE_48MB 131 
#define  B43_OFDM_RATE_54MB 130 
#define  B43_OFDM_RATE_6MB 129 
#define  B43_OFDM_RATE_9MB 128 
 int /*<<< orphan*/  FUNC0 (int) ; 

u8 FUNC1(const u8 bitrate)
{
	switch (bitrate) {
	case B43_OFDM_RATE_6MB:
		return 0xB;
	case B43_OFDM_RATE_9MB:
		return 0xF;
	case B43_OFDM_RATE_12MB:
		return 0xA;
	case B43_OFDM_RATE_18MB:
		return 0xE;
	case B43_OFDM_RATE_24MB:
		return 0x9;
	case B43_OFDM_RATE_36MB:
		return 0xD;
	case B43_OFDM_RATE_48MB:
		return 0x8;
	case B43_OFDM_RATE_54MB:
		return 0xC;
	}
	FUNC0(1);
	return 0;
}