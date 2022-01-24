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
typedef  int u32 ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 

__attribute__((used)) static inline void FUNC1(struct device *dev, u32 ccsr)
{
	const char *str;
	if (ccsr & 1) {
		/* Serial phy */
		switch (ccsr >> 30) {
		case 0:
			str = "1";
			break;
		case 1:
			str = "4";
			break;
		default:
			str = "Unknown";
			break;
		}
		FUNC0(dev, "Hardware port width: %s\n", str);

		switch ((ccsr >> 27) & 7) {
		case 0:
			str = "Single-lane 0";
			break;
		case 1:
			str = "Single-lane 2";
			break;
		case 2:
			str = "Four-lane";
			break;
		default:
			str = "Unknown";
			break;
		}
		FUNC0(dev, "Training connection status: %s\n", str);
	} else {
		/* Parallel phy */
		if (!(ccsr & 0x80000000))
			FUNC0(dev, "Output port operating in 8-bit mode\n");
		if (!(ccsr & 0x08000000))
			FUNC0(dev, "Input port operating in 8-bit mode\n");
	}
}