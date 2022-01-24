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
struct gspca_dev {int dummy; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void FUNC1(struct gspca_dev *gspca_dev,
			const __u8 buffer[][8], int len)
{
	for (;;) {
		FUNC0(gspca_dev, 0x08, *buffer, 8);
		len -= 8;
		if (len <= 0)
			break;
		buffer++;
	}
}