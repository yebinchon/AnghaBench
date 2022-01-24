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
typedef  int /*<<< orphan*/  u16 ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int,int const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct gspca_dev *gspca_dev,
			const u8 *tab, u8 tabsize, u16 addr)
{
	int j;
	u16 ad = addr;

	for (j = 0; j < tabsize; j++)
		FUNC0(gspca_dev, 0xa0, tab[j], ad++);
}