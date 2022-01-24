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
struct gspca_dev {scalar_t__ nbalt; int /*<<< orphan*/  iface; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct gspca_dev *gspca_dev)
{
	FUNC0(gspca_dev, 0x003c, 0x0003);
	FUNC0(gspca_dev, 0x003c, 0x0004);
	FUNC0(gspca_dev, 0x003c, 0x0005);
	FUNC0(gspca_dev, 0x003c, 0x0006);
	FUNC0(gspca_dev, 0x003c, 0x0007);
	FUNC1(gspca_dev->dev, gspca_dev->iface,
					gspca_dev->nbalt - 1);
}