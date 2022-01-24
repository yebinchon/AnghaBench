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
typedef  int /*<<< orphan*/  u16 ;
struct dnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MACREG_ADDR ; 
 int /*<<< orphan*/  MACREG_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct dnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

u16 FUNC3(struct dnet *bp, u16 reg)
{
	u16 data_read;

	/* issue a read */
	FUNC1(bp, reg, MACREG_ADDR);

	/* since a read/write op to the MAC is very slow,
	 * we must wait before reading the data */
	FUNC2(500);

	/* read data read from the MAC register */
	data_read = FUNC0(bp, MACREG_DATA);

	/* all done */
	return data_read;
}