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
typedef  int u16 ;
struct sd {scalar_t__ bridge; int /*<<< orphan*/  contrast; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ BRIDGE_SPCA536 ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	u16 reg;

	reg = sd->bridge == BRIDGE_SPCA536 ? 0x20f1 : 0x21a8;
	FUNC0(gspca_dev, 0x00, reg, sd->contrast);
}